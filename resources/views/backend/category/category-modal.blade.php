    <!-- Category Modal -->
    <div id="category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
      <div role="document" class="modal-dialog">
        <div class="modal-content">
            <form action="{{ route('category.store') }}" method="POST" enctype="multipart/form-data" id="category-form">
              @csrf
              @method('POST')
              <div class="modal-header">
                <h5 id="exampleModalLabel" class="modal-title">{{trans('file.Add Category')}}</h5>
                <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"><i class="dripicons-cross"></i></span></button>
              </div>
              <div class="modal-body">
                <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                <div class="row">
                  <div class="col-md-6 form-group">
                    <label>{{trans('file.name')}} *</label>
                    <input type="text" name="name" required class="form-control" placeholder="Type category name...">
                  </div>
                  <div class="col-md-6 form-group">
                    <label>{{trans('file.Image')}}</label>
                    <input type="file" name="image" class="form-control">
                  </div>
                  <div class="col-md-6 form-group">
                    <label>{{trans('file.Parent Category')}}</label>
                    <select name="parent_id" class="form-control selectpicker" id="parent">
                      <option value="">No {{trans('file.parent')}}</option>
                      @foreach($categories_list as $category)
                      <option value="{{$category->id}}">{{$category->name}}</option>
                      @endforeach
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <input type="hidden" class="category-ajax-check" name="ajax" value="0">
                  <button type="submit" class="btn btn-primary category-submit-btn">{{trans('file.submit')}}</button>
                </div>
              </div>
            </form>
        </div>
      </div>
    </div>
    <!-- Category Modal -->