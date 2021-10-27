<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\ServiceStoreRequest;
use App\Models\Service;
use Illuminate\Support\Facades\Hash;

class ServiceController extends Controller
{
    public function index(){
        $services = Service::all();
        return view('services.index', compact('services'));
    }

    public function create()
    {
        return view('services.create');
    }

    public function store(ServiceStoreRequest $request)
    {
        Service::create($request->validated());

        return redirect()->route('services.index')->with('message', 'Service Created Successfully');
    }

    public function edit(Service $service)
    {
        return view('services.edit', compact('service'));
    }

    public function update(ServiceStoreRequest $request, Service $service)
    {
        $service->update($request->validated());

        return redirect()->route('services.index')->with('message', 'Service Updated Successfully');
    }

    public function destroy(Service $service)
    {
        $service->delete();

        return redirect()->route('services.index')->with('message', 'Service Deleted Successfully');
    }
}
