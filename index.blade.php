@extends('layouts.adminLayout.admin_design')
@section('additionalCSS')

<style>
        .hide{
            display:none;
        }
        .border{
        
            border:2px solid green;
        }
        table{
            border-collapse: collapse;
        }
        table,th,td{
            border:1px solid black;

        }
        select {
            border:none;
            width:100%;
            background: inherit;
        }
        input{
            border:none;
            outline:none;
        }
    </style>
@endsection

@section('content')

<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="{{route('dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
    </div>
    <!--End-breadcrumbs-->
    
    <div class="container-fluid">

    {{-- <div class="row-fluid">
        <div class="span12">
            @if(session()->get('success'))
                <div class="alert alert-success alert-block">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                  {{ session()->get('success') }}  
                </div><br />
              @endif
  
              <div class="clearfix">
                <span class="pull-right"> <a href="{{ route('usergroup.create')}}" class="btn btn-success "><i class="icon-plus"></i> Add</a> </span>
              </div>
              
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                    <h5>Data table </h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered data-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Group Name</th>
                                <th>Sub Group</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($usergroup as $group)
                            <tr>
                                <td>{{$group->id}}</td>
                                <td>{{$group->group_name}}</td>
                                <td>{{ $commonClass->getValue($group->sub_group,'usergroups','group_name') }}</td>
                                <td>{{$group->description}}</td>
                                <td>
                                    <a href="{{ route('usergroup.edit',$group->id)}}" class="btn btn-success pull-left"> <i class="icon-edit"></i> Edit</a>
                                    <form action="{{ route('usergroup.destroy', $group->id)}}" method="post">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger pull-left" type="submit"> <i class="icon-trash"></i> Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div> --}}
        <form action="{{route('usergroup.store')}}" method="post">
            @csrf
        <table>
        <thead>
            <th>name</th>
            <th>age</th>
            <th>data</th>
            <th>actions</th>
        </thead>
        <tbody>
        <tr>
                
            
            <td>
                <span>
                     rasel
                </span>
                <span class="hide">
                    <select name="name" id="">
                        <option value="">RAsel</option>
                        <option value="">khaan</option>
                    </select>
                </span>
            </td>
            <td>
                <span >
                    20
                </span>
                <span class="hide">
                    <select name="age[]" id="age" >
                        <option  value="22">22</option>
                        <option value="32">32</option>
                    </select>
                                </span>
                
            </td>
            <td> 
            <span>
                new data
            </span>
            <span class="hide">
                <select name="data" id="">
                    <option value="">olddata</option>
                    <option value="">rewrite data</option>
                </select>
            </span>
            </td>
            <td> <a href="" class="edit">edit</a>
                <button class="hide">update</button>

            </td>
            </tr>
            <tr>
                
            
            <td>
                <span>
                     rajib
                </span>
                <span class="hide">
                    <select name="" id="">
                        <option value="">rajib</option>
                        <option value="">bisws</option>
                    </select>
                </span>
            </td>
            <td>
                <span >
                    40
                </span>
                <span class="hide">
                    <select name="age[]" id="">
                        <option value="52">52</option>
                        <option value="52">62</option>
                    </select>
                </span>
                
            </td>
            <td> 
            <span>
                input
            </span>
            <span class="hide">
                <select name="" id="">
                    <option value="">yapp</option>
                    <option value="">nope </option>
                </select>
            </span>
            </td>
            <td> <a href="" class="edit">edit</a>
              <button  class="hide">update</button>
            </td>
            </tr>
        </tbody>

    </table>
</form>
    </div>

</div>

@endsection

@section('additionalJS')

  <script>
    $(function(){
         $(document).on('click','.edit',function(e){
             // alert($(this).parents("select [name='age']").html());
               console.log($(this).parents('tr').find("[name='age']").val());
            e.preventDefault();
             var action=$(this);
              var update= action.next();
                update.toggleClass('hide');
              
                    if(action.text()=="edit"){
                                        action.text('cancel');
                                    }
                                    else{
                                        action.text('edit');
                                    }

                    $(this).parents('tr').find('td').each(function(i,el){
                           
                            var border=el;
                            
                           
                            $(el).find('span').each(function(i,el){
                                    
                                    console.log(action.text());
                                    $(this).toggleClass('hide');
                                    
                                    $(border).toggleClass('border'); 
                                
                            
                            
                            });
                    });
                
        

         });
    });
  </script>


@endsection