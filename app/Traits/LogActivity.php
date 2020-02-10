<?php 
namespace App\Traits;

use App\AcivityLog;


Trait LogActivity{


    function LogActivity($name='',$action='',$new_data='',$old_data='',$employee_id='')
    {
        if ($old_data == '') {
           $activity = new AcivityLog;

           $activity->name        = $name;
           $activity->employee_id = $employee_id;
           $activity->action      = $action;
           $activity->new_data    = ($new_data == '' || empty($new_data)) ? NULL : json_encode($new_data);

           $activity->save();
        }else{
            $changed_old_value =  array_intersect_key($old_data, $new_data);
            //return $new_data;

            $activity              = new AcivityLog;
            $activity->name        = $name;
            $activity->employee_id = $employee_id;
            $activity->action      = $action;
            $activity->old_data    = json_encode($changed_old_value);
            $activity->new_data    = json_encode($new_data);
            $activity->save();
        }

        
    }
	


}



 ?>