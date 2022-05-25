<?php
require_once '../app/models/diocesi.php';

function controller_diocesi_all()
{
  global $data;
  $data['page_title'] = $data['page_name']="Tutte le diocesi";
  $data['rows']=model_diocesi_all();
  session_start();
  view_render_html();
}
function controller_diocesi_info($params)
{
  global $data;
  $id=$params[0];
  $details=model_diocesi_details($id);
  $parrocchie=model_diocesi_parrocchie($id);
  $data['rows']=array("details"=>$details, "parrocchie"=>$parrocchie);
  $data['page_title'] = $data['page_name'] = $data['rows']['details']['Nome'];
  $data['href'] = array(
    array('link' => $data['base_path'] . "/diocesi/all", 'text' => "TUTTE LE DIOCESI"),
  );
  session_start();
  view_render_html();
}