<?php
require '../app/models/diacono.php';

function controller_diacono_index()
{
    /*global $data;
    $data['rows'] = model_vescovo_all();*/
    view_render_html();
}
function controller_diacono_scegli()
{
    global $data;
    $data['rows'] = model_diacono_scegli();
    view_render_html();
}
function controller_diacono_funzmax()
{
    global $data;
    $data['rows'] = model_diacono_funzmax();
    view_render_html();
}
function controller_diacono_funzione($id)
{
    global $data;
    $data['rows'] = model_diacono_funzione($id);
    view_render_html();
}