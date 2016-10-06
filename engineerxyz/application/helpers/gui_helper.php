<?php

function cleanStr($string) {
    return addslashes($string);
}

function timeAricle($article) {
    $t = strtotime($article->time);
    return date("d/m/Y", $t);
}

function hrefListNews() {
    return site_url('news/news_list');
}

function hrefAriticle($article) {
    return site_url('detail/' . $article->id . '/' . $article->slug);
}

function linkHot($article) {
    return '<a href="' . hrefProblem($article) . '" class="title">' . $article->title . '</a>';
}

function srcImgArticle($article) {
    if (empty($article->img))
        return base_url() . 'assets/images/noimage.png';
    return base_url() . 'upload/article/' . $article->img;
}

function imgArticle($article, $class = '', $height = '') {
    return '<img src="' . srcImgArticle($article) . '"  class="' . $class . '" alt="' . cleanStr($article->title) . '" title="' . cleanStr($article->title) . '" >';
}

function imgBanner($filename, $title = 'Banner Images EngineerXYZ') {
    return '<img style="width:100%; height: 200px" src="' . base_url() . 'upload/slider/' . $filename . '" alt="' . cleanStr($title) . '" title="' . cleanStr($title) . '" >';
}

function hrefSearch() {
    return site_url() . 'main/search';
}

function getLink($link = '') {
    return site_url() . $link . (($GLOBALS['language'] === 'vi') ? '' : '?lang=en');
}

function hrefProblem($problem) {
    return site_url() . 'problem/' . $problem->id . '/' . $problem->slug;
}

function srcImgCourse($course) {
    if (empty($course->img))
        return base_url() . 'assets/images/noimage.png';
    return base_url() . 'upload/course/' . $course->img;
}

function srcImgCourseMedia($media) {
    if (empty($media->value))
        return base_url() . 'assets/images/noimage.png';
    return base_url() . 'upload/course/media/' . $media->value;
}

function srcImgProblem($problem) {
    if (empty($problem->img))
        return base_url() . 'assets/images/noimage.png';
    return base_url() . 'upload/problem/' . $problem->img;
}