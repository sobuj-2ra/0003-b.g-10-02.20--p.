<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AcivityLog extends Model
{
    protected $guarded = [];

    public function getParsedOldData()
    {
        $data = '';
    	

        if (is_null($this->old_data)) {
            return $data;
        }

        $raw_data = json_decode($this->old_data);
    	foreach ($raw_data as $key => $value) {
    		$data .= '<strong>'.$key .'</strong>:'. $value.'<br>';
    	}
    	return $data;
    }

    public function getParsedNewData()
    {
    	
    	$data = '';

        if (is_null($this->new_data)) {
            return $data;
        }

        $raw_data = json_decode($this->new_data);
    	foreach ($raw_data as $key => $value) {
    		$data .= '<strong>'.$key .'</strong>:'. $value.'<br>';
    	}
    	return $data;
    }
}
