<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Userinfo;
use Livewire\WithPagination;
use App\Models\location\Region;

use Illuminate\Validation\Rule;
use App\Models\location\Province;
use App\Models\location\Baranggay;
use Illuminate\Support\Facades\Http;
use App\Models\location\Municipalities;


class VerifyLocation extends Component
{
    use WithPagination;
    public $modalFormVisible = false;
    public $modalConfirmDeleteVisible = false;
    public $modelId;

    public $region;
    public $province;
    public $municipalities;
    public $baranggay;
    public $regionSelection = [];
    public $provinceSelection = [];
    public $municipalitySelection = [];
    public $baranggaySelection = [];

    //Validation Rules
    public function rules(){
        return [
            'region' => 'required',
            'province' => 'required',
            'municipalities' => 'required',
            'baranggay' => 'required',
        ];
    }

    public function loadModel(){
        $data = Userinfo::where('id', $this->modelId)->first();
        //Assign The Variable Here
    }
    
    //The Data for the model mapped in this component
    public function modelData(){
        return [
            'user_id' => auth()->user()->endorsers_id,
            'region' => $this->location(new Region, $this->region, 'regCode', true)['regDesc'],
            'region_code' => $this->region,
            'province' => $this->location(new Province, $this->province, 'provCode', true)['provDesc'],
            'province_code' => $this->province,
            'municipalities' => $this->location(new Municipalities, $this->municipalities, 'citymunCode', true)['citymunDesc'],
            'mun_code' => $this->municipalities,
            'barangay' => $this->location(new Baranggay, $this->baranggay, 'brgyCode', true)['brgyDesc'],
            'barangay_code' => $this->baranggay,
        ];
    }

    public function create(){
        $this->validate();
        Userinfo::create($this->modelData());
        return redirect(route('/'));
    }

    public function update(){
        $this->validate();
        Userinfo::where('id', $this->modelId)->update($this->modelData());
        $this->modalFormVisible = false;
    }

    public function delete(){
        Userinfo::where('id', $this->modelId)->delete();
        $this->modalConfirmDeleteVisible = false;
    }

    public function createShowModal(){
        $this->resetValidation();
        $this->reset();
        $this->modalFormVisible = true;
    }

    public function updateShowModal($id){
        $this->resetValidation();
        $this->reset();
        $this->modalFormVisible = true;
        $this->modelId = $id;
        $this->loadModel();
    }

    public function deleteShowModal($id){
        $this->modelId = $id;
        $this->modalConfirmDeleteVisible = true;
    }

    // For API Data to fetch
    public function api($category, $code = null){
        // https://ph-locations-api.buonzz.com/v1/provinces?filter[where][region_code]=02&filter[order]=name asc
        if($category == 'regions'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/regions');
        }

        if($category == 'provinces'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/provinces?filter[where][region_code]='. $code .'&filter[order]=name asc');
        }

        if($category == 'cities'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/cities?filter[where][province_code]='. $code .'&filter[order]=name asc');
        }

        if($category == 'barangays'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/barangays?filter[where][city_code]='. $code .'&filter[order]=name asc');
        }

        return json_decode($response->body(), true)['data'];
    }

    public function apiData($category, $id = null){
        if($category == 'regions'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/regions/'. $id);
        }

        if($category == 'provinces'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/provinces/'. $id);
        }

        if($category == 'cities'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/cities/'. $id);
        }

        if($category == 'barangays'){
            $response = Http::get('https://ph-locations-api.buonzz.com/v1/barangays/'. $id);
        }

        return json_decode($response->body(), true);
    }

    // Alternative For Fetching data From API(If the url source not working anymore)
    public function location($category, $code = null, $codeType = null, $single = false){
        if($code == null && $codeType == null){
            $data = $category::all();
        }else if($single){
            $data = $category::where($codeType, $code)->first();
        }else{
            $data = $category::where($codeType, $code)->get();
        }
        
        return $data->toArray();
    }

    public function mount(){
        $this->regionSelection = $this->location(new Region);
    }

    public function updatedRegion(){
        $this->municipalitySelection = [];
        $this->baranggaySelection = [];
        $this->provinceSelection = $this->location(new Province, $this->region, 'regCode');
    }

    public function updatedProvince(){
        $this->baranggaySelection = [];
        $this->municipalitySelection = $this->location(new Municipalities, $this->province, 'provCode');
    }

    public function updatedMunicipalities(){
        $this->baranggaySelection = $this->location(new Baranggay, $this->municipalities, 'citymunCode');
    }

    public function render()
    {
        // $data = Municipalities::where('provCode', '0128')->first();
        // dd($data);
        return view('verify.location')->layout('layouts.guest');
    }
}