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

function controller_diacono_scegliParrocchia()
{
    global $data;
    $data['rows'] = model_diacono_scegliParrocchia();
    view_render_html();
}
function controller_diacono_parrocchia($id)
{
    global $data;
    $data['rows'] = model_diacono_parrocchia($id);
    view_render_html();
}
function controller_diacono_personeGenNoParrocchia($id)
{
    global $data;
    $data['rows'] = model_diacono_personeGenNoParrocchia($id);
    view_render_html();
}
function controller_diacono_persona($id)
{
    global $data;
    $data['rows'] = model_diacono_persona($id);
    view_render_html();
}
function controller_diacono_funzVescovo($id)
{
    global $data;
    $data['rows'] = model_diacono_funzVescovo($id);
    view_render_html();
}
function controller_diacono_vescovo($id)
{
    global $data;
    $data['rows'] = model_diacono_vescovo($id);
    view_render_html();
}
function controller_diacono_parrocchieSole()
{
    global $data;
    $data['rows'] = model_diacono_parrocchieSole();
    view_render_html();
}