<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Page;
use App\Models\Product;
use App\Models\Setting;
use App\Models\SpecialCategory;
use Illuminate\Http\Request;

class FrontendController extends Controller
{


    public function home()
    {
        $Sp_category = SpecialCategory::latest()->first();
        $Sp_category2 = SpecialCategory::latest()->skip(1)->take(3)->get();
        $Sp_category3 = SpecialCategory::latest()->skip(4)->take(1)->first();
        $product_all = Product::get();
        $settings = Setting::get();
        return view('frontend.pages.home.home', compact('product_all', 'settings', 'Sp_category', 'Sp_category2', 'Sp_category3'));
    }

    public function product($slug, $id)
    {
        $categry = Category::where('slug', $slug)->get();
        $product = Product::where('category_id', $id)->get();
        // dd($categry[0]->title);
        return view('frontend.pages.category.index', compact('product', 'categry'));
    }

    public function Sp_product($slug, $id)
    {
        $categry = SpecialCategory::where('slug', $slug)->get();
        $product = Product::where('special_cat_id', $id)->get();
        // dd($product); 
        return view('frontend.pages.category.index', compact('product', 'categry'));
    }
    public function productDetails($slug, $id)
    {
        // dd('productDetails');
        $details = Product::find($id);
        return view('frontend.pages.subCategory.index', compact('details'));
    }
    public function page($slug)
    {
        $page_info = Page::where('slug', $slug)->first();
        return view('frontend.pages.policy.about-us', compact('page_info'));
        // if ($slug == 'terms') {
        //     return view('frontend.pages.policy.terms', compact('page_info'));
        // } elseif ($slug == 'privacy-policy') {
        //     return view('frontend.pages.policy.privacy-policy', compact('page_info'));
        // } elseif ($slug == 'return-policy') {
        //     return view('frontend.pages.policy.return-policy', compact('page_info'));
        // } elseif ($slug == 'cookie-policy') {
        //     return view('frontend.pages.policy.cookie-policy', compact('page_info'));
        // } elseif ($slug == 'about-us') {
        //     return view('frontend.pages.policy.about-us', compact('page_info'));
        // } else {
        //     return view('frontend.pages.policy.faq', compact('page_info'));
        // }
    }
}
