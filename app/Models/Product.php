<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $guarded =['id'];
    protected $fillable=['title','slug','sku','regular_price','sale_price','description','short_desc','featured_img','gallery_img','category_id','special_cat_id','related_product_id','flash_title','status','delivery_note'];
    
    public function attributes()
    {
        return $this->hasMany(ProductAttribute::class, 'product_id','id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }
    public function reviews()
    {
        return $this->hasMany(ProductReviews::class, 'product_id');
    }
    function getFeaturedImgAttribute($v){
        return url('/').'/uploads/products/images/'.$v;   
    }
    
}
