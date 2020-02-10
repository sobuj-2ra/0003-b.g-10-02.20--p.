<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class NewWorkerAdded implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    public $worker_data;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($worker_data)
    {
        $this->worker_data = $worker_data;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('machine.'.$this->worker_data->machine);
    }
}
