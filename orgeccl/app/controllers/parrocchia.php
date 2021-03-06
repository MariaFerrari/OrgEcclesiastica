<?php
require_once '../app/models/parrocchia.php';

function controller_parrocchia_info($params)
{
  global $data;
  $id = $params;
  $data['rows'] = model_parrocchia_details($id);
  $data['page_title'] = $data['page_name'] = $data['rows']['Nome'];
  $data['href'] = array(
    array('link' => $data['base_path'] . "/diocesi/info/".$data['rows']['IdDiocesi'], 'text' => "ALTRE PARROCCHIE DELLA DIOCESI"),
  );
  session_start();
  view_render_html();
}
