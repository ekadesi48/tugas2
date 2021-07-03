<?php namespace App\Controllers;

use CodeIgniter\Controllers;
use App\Models\Models_order;

class Order extends BaseController 
{
    
    public function index()
    {
        $model = new Models_order();
        $data['OrderID'] = $model->getOrder();
        echo view('view_order',$data);
    }
}

?>