<?php

function contact_href() {
    return site_url('contact');
}

function product_list_href() {
    return site_url('product');
}

function news_href() {
    return site_url('post');
}

function service_href() {
	return site_url('service');
}

function about_href() {
	return site_url('about');
}



/*
 * PRODUCT AREA
 */

function class_cat_product($obj, $type = 'cat') {
    if ($type == 'cat')
        return '.cat_' . $obj->id;
    else if ($type == 'pro')
        return 'cat_' . $obj->category_id;
}

function title_cat_product($cat) {
    return $cat->title;
}

function product_name($product) {
    return $product->title;
}

function product_href($product) {
    return site_url('product/detail/' . $product->id);
}

function product_image_src($product) {
    
    if(!$product->cover) {
        // no image -> set default php
        return base_url('upload/product/');
    }
   
    $pos = strrpos($product->cover, ".");
    $name = substr($product->cover, 0, $pos);
    $ext = substr($product->cover, $pos); 
    $file = $name. '700x500'. $ext;
    return base_url('upload/product/' . $file);
}

function product_image($product) {
    if (!isset($product->cover))
        return '';
    return '<img src="' . product_image_src($product) . '" class="img-responsive"></a>';
}

function product_has_old_price($product) {
    return (int)$product->old_price > 0;
}

function product_price($product) {
    if ($product->price < 0)
        return '';
    return number_format($product->price) . ' VND';
}

function product_old_price($product) {
    if ($product->old_price < 0)
        return '';
    return number_format($product->old_price) . ' VND';
}


function product_summary($product) {
    return $product->excerpt;
}

function product_content($product) {
    return $product->content;
}

function cat_href($cat) {
    return site_url('product/cat/' . $cat->id);
}

function cat_name($cat) {
    return $cat->title;
}

function post_cover($post) {
    return base_url('upload/article/post/' . $post->cover);
}

function post_title($post) {
    return $post->title;
}

function post_slug($post) {
    return $post->slug;
}

function post_href($post) {
    return site_url('post/detail/' . $post->id);
}

function post_time($post) {
    return date('d/m/Y', strtotime($post->created_at));
}

function post_excerpt($post) {
    return $post->excerpt;
}

function post_content($post) {
    return $post->content;
}
