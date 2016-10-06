<?php

function getLink($link = '') {
    return site_url() . $link . (($GLOBALS['language'] === 'vi') ? '' : '?lang=en');
}

function hrefNews($news) {
    return getLink('media/article/' . $news['id']);
}

function linkNews($news) {
    return '<a href="' . getLink('media/article/' . $news['id']) . '">' . $news['title'] . '</a>';
}
