<?php

namespace App\DataTables;

use App\Item;
use App\User;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Services\DataTable;

class ItemsDataTable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        return datatables($query)
            ->addColumn('action', function ($item) {
                  $col_to_show = '<a href="#" class="btn btn-primary" id="modal_switch" data-id='.$item->id.'><i class="fa fa-eye"></i></a>';
                  return $col_to_show;
              })
              ->addColumn('total_stock', function ($item) {
                  return $item->StockIn->count() + $item->NotStockedIn->count();
              })
              ->addColumn('stockout', function ($item) {
                  return $item->StockOut->count();
              })
              ->editColumn('added_by',function($item){
                return $item->getUser->name;
              })
              ->rawColumns(['action']);
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\User $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Item $model)
    {
        return DB::statement(DB::raw('set @rownum=0'));
          $items = Item::get(['items.*', 
                      DB::raw('@rownum  := @rownum  + 1 AS rownum')]);

    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
                    ->columns($this->getColumns())
                    ->minifiedAjax()
                    ->addAction(['width' => '80px'])
                    ->parameters($this->getBuilderParameters());
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        return [
            'rownum',
            'item_name',
            'item_code',
            'total_stock',
            'stockout',
            'pack_size',
            'group_name',
            'group_code',
            'added_by',
            'action'

        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Items_' . date('YmdHis');
    }
}
