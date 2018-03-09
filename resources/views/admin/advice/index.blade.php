@extends('admin.master')
@section('title','| All Advice')

@section('maincontent')

  <h1>All Advice lists</h1> 
    <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">
<a class="btn btn-primary btn-md" data-toggle="modal" data-target=".bs-example-modal-lg">create advice Category</a>
             </h3>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
        <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center">Create New Category</h4>
              </div>
           <div class="modal-body">
               
     {!! Form::open(['url' => 'admin/advice-category-store']) !!}

             {{ Form::label('title', 'new category')}}
            {{ Form::text('name',null, ["class" =>"form-control"])}}

            @if($errors->has('name'))
            <label style="color: red"> {{ $errors->first('name') }} </label>
            @endif
            <br>
  </div>
          <div class="modal-footer">
               
          {{ Form::submit('Save category',[
                        "class"=>"btn btn-success btn-lg btn-block"
                        ])}}
             {!! Form::close() !!}

                
              </div>        

    </div>
  </div>
</div>


               </div>
            <!-- /.box-header -->
            <div class="box-body ">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No:</th>
                  <th>Title:</th>
                  <th>body</th>
                  <th>Category</th>
                 <th>Total view</th>
                  <th>Created At</th>
                  <th>Posted by</th>
                  <th>Action</th>
                  
                </tr>
                </thead>
                <tbody>
                <?php $i =0?>
                @foreach($allarticle as $allarticles)
                <tr>
                  <td>{{ $i++ }}</td>
                  <td title="{{ $allarticles->title }}">{{ $allarticles->title }}</td>
                  <td title="{{ $allarticles->body }}">{!!str_limit(strip_tags($allarticles->body),120,'...')!!}
                  
                              <a type="button" class="btn btn-default btn-sm" data-toggle="modal" 
          data-target=".bs-example-modal-lg{{$allarticles->id}}">see more..</a>

<div class="modal fade bs-example-modal-lg{{$allarticles->id}}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
   

       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{{ $allarticles->category }}</h4>
      </div>
      <div class="modal-body">
        <p>   {!!$allarticles->body!!} </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
                  </td>
                 
                 <td><span class="label label-success">
                 {{ $allarticles->category }}
</span>
                 </td>
                   <td class="text-center"> 
                   <span class="label label-danger">
                         {{ $allarticles->view }}
                    </span>     
                     </td>
                
                 
                  <td>{{ date('M j, Y',strtotime($allarticles->created_at)) }}</td>
                   <td>
     {{ $allarticles->created_by }}
                   </td>
                  <td> 
<p>
          
           <button type="button" class="btn btn-success btn-sm">Edit</button>
              {{--  <button type="button" class="btn btn-danger btn-sm">Delete</button>
            --}}
      {{ Form::open(['url'=>['admin/article',$allarticles->id],'method'=>'DELETE']) }}
      {{ Form::submit('Delete',['class'=>"btn btn-danger btn-sm"]) }}
      {{ Form::close() }}
</p>

                  </td>
                   
                </tr>
             @endforeach   
                
                </tbody>
               
              </table>
                   <div class="row">
<div class="col-md-12 text-center">
   <span class="text-center">{{$allarticle->links() }}</span> 
</div>
    
</div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col -->
      </div>
@endsection