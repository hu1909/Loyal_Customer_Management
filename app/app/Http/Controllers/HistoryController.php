<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\HistoryStoreRequest;
use App\Models\History;
use Illuminate\Support\Facades\Hash;

class HistoryController extends Controller
{
    public function index(){
        $histories = History::all();
        return view('histories.index', compact('histories'));
    }

    public function create()
    {
        return view('histories.create');
    }

    public function store(HistoryStoreRequest $request)
    {
        History::create($request->validated());

        return redirect()->route('histories.index')->with('message', 'Add History Successfully');
    }

    public function edit(History $history)
    {
        return view('histories.edit', compact('history'));
    }

    public function update(HistoryStoreRequest $request, History $history)
    {
        $history->update($request->validated());

        return redirect()->route('histories.index')->with('message', 'History Updated Successfully');
    }

    public function destroy(History $history)
    {
        $history->delete();

        return redirect()->route('histories.index')->with('message', 'History Deleted Successfully');
    }
}
