<?php

function controller_home_index()
{
    global $data;
    $data['page_name']= $data['page_title'];
    view_render_html();
}

function controller_home_about()
{
    global $data;
    $data['page_name'] = $data['page_title'];
    view_render_html();
}