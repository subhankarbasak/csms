<div class="breadcrumb">
    <h1>{{ __('translate.AddCustomer') }}</h1>
</div>

<div class="separator-breadcrumb border-top"></div>

<!-- Button to trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#createCustomerModal">
    {{ __('translate.AddCustomer') }}
</button>

<!-- Modal -->
<div class="modal fade" id="createCustomerModal" tabindex="-1" role="dialog" aria-labelledby="createCustomerModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="createCustomerModalLabel">{{ __('translate.AddCustomer') }}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="section_create_client">
          <form @submit.prevent="Create_Client()">
            <div class="card-body">
              <div class="row">
                <div class="form-group col-md-4">
                  <label for="username">{{ __('translate.FullName') }} <span class="field_required">*</span></label>
                  <input type="text" v-model="client.username" class="form-control" name="username" id="username" placeholder="{{ __('translate.FullName') }}">
                  <span class="error" v-if="errors && errors.username">
                    @{{ errors.username[0] }}
                  </span>
                </div>
                <div class="form-group col-md-4">
                  <label for="Phone">{{ __('translate.Phone') }}</label>
                  <input type="text" v-model="client.phone" class="form-control" id="Phone" placeholder="{{ __('translate.Enter_Phone') }}">
                  <span class="error" v-if="errors && errors.phone">
                    @{{ errors.phone[0] }}
                  </span>
                </div>
                <div class="form-group col-md-4">
                  <label for="city">{{ __('translate.City') }}</label>
                  <input type="text" v-model="client.city" class="form-control" id="city" placeholder="{{ __('translate.Enter_City') }}">
                  <span class="error" v-if="errors && errors.city">
                    @{{ errors.city[0] }}
                  </span>
                </div>
                <div class="form-group col-md-4">
                  <label for="email">{{ __('translate.Email') }}</label>
                  <input type="text" v-model="client.email" class="form-control" id="email" placeholder="{{ __('translate.Enter_email_address') }}">
                  <span class="error" v-if="errors && errors.email">
                    @{{ errors.email[0] }}
                  </span>
                </div>
                <div class="form-group col-md-4">
                  <label for="photo">{{ __('translate.Image') }}</label>
                  <input name="photo" @change="changePhoto" type="file" class="form-control" id="photo">
                  <span class="error" v-if="errors && errors.photo">
                    @{{ errors.photo[0] }}
                  </span>
                </div>
                <div class="form-group col-md-8">
                  <label for="address">{{ __('translate.Address') }}</label>
                  <textarea v-model="client.address" class="form-control" name="address" id="address" placeholder="{{ __('translate.Address') }}"></textarea>
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-md-6">
                  <button type="submit" class="btn btn-primary" :disabled="SubmitProcessing">
                    <span v-if="SubmitProcessing" class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                    <i class="i-Yes me-2 font-weight-bold"></i> {{ __('translate.Submit') }}
                  </button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection

@section('page-js')

<script>
  Vue.component('v-select', VueSelect.VueSelect)

  var app = new Vue({
    el: '#section_create_client',
    data: {
      editmode: false,
      SubmitProcessing: false,
      errors: [],
      data: new FormData(),
      client: {
        username: "",
        code: "",
        photo: "",
        status: 1,
        email: "",
        city: "",
        phone: "",
        address: "",
      },
    },
    methods: {
      changePhoto(e) {
        let file = e.target.files[0];
        this.client.photo = file;
      },
      Create_Client() {
        var self = this;
        self.SubmitProcessing = true;
        self.data.append("username", self.client.username);
        self.data.append("status", self.client.status);
        self.data.append("email", self.client.email);
        self.data.append("city", self.client.city);
        self.data.append("phone", self.client.phone);
        self.data.append("address", self.client.address);
        self.data.append("photo", self.client.photo);
        axios.post("/people/clients", self.data)
          .then(response => {
            self.SubmitProcessing = false;
            window.location.href = '/people/clients'; 
            toastr.success('{{ __('translate.Created_in_successfully') }}');
            self.errors = {};
          })
          .catch(error => {
            self.SubmitProcessing = false;
            if (error.response.status == 422) {
              self.errors = error.response.data.errors;
            }
            toastr.error('{{ __('translate.There_was_something_wronge') }}');
          });
      },
    },
    created() {
    }
  })
</script>

@endsection
