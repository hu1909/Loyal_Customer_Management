@extends('layouts.main')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Customer</h1>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        {{ __('Manage Customer') }}
                        <a href="{{ route('customers.index') }}" class="float-right">Back</a>
                    </div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('customers.update', $customer->id) }}">
                            @csrf
                            @method('PUT')

                            <div class="form-group row">
                                <label for="customername"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Customer Name') }}</label>

                                <div class="col-md-6">
                                    <input id="customername" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="customername"
                                        value="{{ old('customername', $customer->customername) }}" required
                                        autocomplete="customername" autofocus>

                                    @error('customername')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="customer_birth"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Customer Birthday') }}</label>

                                <div class="col-md-6">
                                    <input id="customer_birth" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="customer_birth"
                                        value="{{ old('customer_birth', $customer->customer_birth) }}" required
                                        autocomplete="customer_birth" autofocus>

                                    @error('customer_birth')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="customer_phone"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Phone Number') }}</label>

                                <div class="col-md-6">
                                    <input id="customer_phone" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="customer_phone"
                                        value="{{ old('customer_phone', $customer->customer_phone) }}" required
                                        autocomplete="customer_phone" autofocus>

                                    @error('customer_phone')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="customer_card"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Type of Card') }}</label>

                                <div class="col-md-6">
                                    <input id="customer_card" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="customer_card"
                                        value="{{ old('customer_card', $customer->customer_card) }}" required
                                        autocomplete="customer_card" autofocus>

                                    @error('customer_phone')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Update User') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="m-2 p-2">
                    <form method="POST" action="{{ route('customers.destroy', $customer->id) }}">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger">Delete</button>
                    </form>
                </div>
            </div>
            
        </div>
    </div>
@endsection