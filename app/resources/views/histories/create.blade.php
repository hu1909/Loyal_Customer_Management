@extends('layouts.main')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">History</h1>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        {{ __('Change History') }}
                        <a href="{{ route('histories.index') }}" class="float-right">Back</a>
                    </div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('histories.store') }}">
                            @csrf

                            <div class="form-group row">
                                <label for="customername"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Customer Name') }}</label>

                                <div class="col-md-6">
                                    <input id="customername" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="customername"
                                        value="{{ old('customername') }}" required autocomplete="customername" autofocus>

                                    @error('customername')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="customer_phone"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Customer Phone Number') }}</label>

                                <div class="col-md-6">
                                    <input id="customer_phone" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="customer_phone"
                                        value="{{ old('customer_phone') }}" required autocomplete="customer_phone" autofocus>

                                    @error('customer_phone')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="day_buy"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Day Buy') }}</label>

                                <div class="col-md-6">
                                    <input id="day_buy" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="day_buy"
                                        value="{{ old('day_buy') }}" required autocomplete="day_buy" autofocus>

                                    @error('day_buy')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="description"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Description') }}</label>

                                <div class="col-md-6">
                                    <input id="description" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="description"
                                        value="{{ old('description') }}" required autocomplete="description" autofocus>

                                    @error('description')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            
                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Add History') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection