<?php

function controller_home_index()
{
    global $data;
    $data['page_name']= $data['page_title'];
    $data['href']['link']=$data['base_path']."/diocesi/all";
    $data['href']['text'] = "TUTTE LE DIOCESI";
    view_render_html();
}

function controller_home_about()
{
    global $data;
    $data['page_name'] = $data['page_title'];
    $data['href']['link'] = $data['base_path'] . "/diocesi/all";
    $data['href']['text'] = "TUTTE LE DIOCESI";
    view_render_html();
}

function controller_home_login()
{
    global $data;
    $data['page_name'] = $data['page_title'];
    $data['href']['link'] = $data['base_path'] . "/diocesi/all";
    $data['href']['text'] = "TUTTE LE DIOCESI";
    view_render_html();
}