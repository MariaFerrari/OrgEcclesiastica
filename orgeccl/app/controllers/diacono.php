<?php
require '../app/models/diacono.php';
$data['page_title']=$data['page_name']="Diacono";

function login()
{
  session_start();
  if (!key_exists('ruolo', $_SESSION)) {
    header('Location: /orgeccl/error/401');
  }
}
function controller_diacono_index()
{
  login();
  view_render_html();
}
function controller_diacono_scegli()
{
  login();
  global $data;
  $data['rows'] = model_diacono_scegli();
  view_render_html();
}
function controller_diacono_funzmax()
{
  login();
  global $data;
  $data['rows'] = model_diacono_funzmax();
  view_render_html();
}
function controller_diacono_funzione($id)
{
  login();
  global $data;
  $data['rows'] = model_diacono_funzione($id);
  view_render_html();
}

function controller_diacono_scegliParrocchia()
{
  login();
  global $data;
  $data['rows'] = model_diacono_scegliParrocchia();
  view_render_html();
}
function controller_diacono_parrocchia($id)
{
  login();
  global $data;
  $data['rows'] = model_diacono_parrocchia($id);
  view_render_html();
}
function controller_diacono_personeGenNoParrocchia($id)
{
  login();
  global $data;
  $data['rows'] = model_diacono_personeGenNoParrocchia($id);
  view_render_html();
}
function controller_diacono_persona($id)
{
  login();
  global $data;
  $data['rows'] = model_diacono_persona($id);
  view_render_html();
}
function controller_diacono_funzVescovo($id)
{
  login();
  global $data;
  $data['rows'] = model_diacono_funzVescovo($id);
  view_render_html();
}
function controller_diacono_vescovo($id)
{
  login();
  global $data;
  $data['rows'] = model_diacono_vescovo($id);
  view_render_html();
}
function controller_diacono_parrocchieSole()
{
  login();
  global $data;
  $data['rows'] = model_diacono_parrocchieSole();
  view_render_html();
}
