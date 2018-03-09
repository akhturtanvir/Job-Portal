@extends('admin.master')
@section('title','| Home')

@section('maincontent')


<h1>Contact message</h1> 
    <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header text-center">
              <h3 class="box-title">
 {{ date('d-M-y',strtotime($current_contact->created_at)) }}
                        <br>
                        <i class="fa fa-clock-o"></i> 
                {{ date('h:i A',strtotime($current_contact->created_at)) }}
                   <br>    

         <span class="text-center" style="text-align: center !important">{{$current_contact->email}} </span>        
              </h3>

               </div>
            <!-- /.box-header -->
            <div class="box-body ">
           
           {!! $current_contact->body !!}
           <br>
         
       <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg{{ $current_contact->id }}">Relpay this message</button>

</span> 

<div class="modal fade bs-example-modal-lg{{ $current_contact->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      
    <section class="connectedSortable">
      <!-- quick email widget -->
          <div class="box box-info">
            <div class="box-header text-center">
              <i class="fa fa-envelope"></i>

              <h3 class="box-title">Email to {{$current_contact->email}}</h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-dismiss="modal" title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
             {!! Form::open(['url' => 'admin/contact-replay-mail']) !!}

            <div class="box-body">
           
<input type="hidden"  name="contact_id" value="{{$current_contact->id}}">

                <div class="form-group">
                  <input type="email" name="email" class="form-control" placeholder="Email to:">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" placeholder="Subject">
                </div>
                <div>
                  <textarea name="message" class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
          
            </div>
            <div class="box-footer clearfix">
              <button type="submit" class="pull-right btn btn-default" >Send mail
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
</form>
          </div>

        </section>


    </div>
  </div>
</div>
            </div>
            <!-- /.box-body -->



          </div>
          <!-- /.box -->
<br>
        </div>
        <!-- /.col -->
      </div>

@if(Session::get('success_contact_mail'))
<script type="text/javascript">

var x = "hggtf";
if (x) {
  alert("Congrats! Mail Sent Successfully!");
}
</script>
@endif
@endsection