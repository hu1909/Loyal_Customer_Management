@extends('layouts.main')

@section('content')

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Card Type</h1>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        {{ __('Add Card') }}
                        <a href="{{ route('services.index') }}" class="float-right">Back</a>
                    </div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('services.store') }}">
                            @csrf

                            <div class="form-group row">
                                <label for="type_card"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Card Type') }}</label>

                                <div class="col-md-6">
                                    <input id="type_card" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="type_card"
                                        value="{{ old('type_card') }}" required autocomplete="type_card" autofocus>

                                    @error('type_card')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="last"
                                    class="col-md-4 col-form-label text-md-right">{{ __('Expiration') }}</label>

                                <div class="col-md-6">
                                    <input id="last" type="text"
                                        class="form-control @error('name') is-invalid @enderror" name="last"
                                        value="{{ old('last') }}" required autocomplete="last" autofocus>

                                    @error('last')
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
                                        {{ __('Add Card Type') }}
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