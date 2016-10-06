<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = 'main';

$route['gio-hang'] = 'cart';
$route['bang-gia.html'] = 'main/quotation';
$route['lien-he.html'] = 'main/contact';
$route['download.html'] = 'main/download';

$route['thu-thuat'] = 'article';
$route['thu-thuat/([0-9]+)'] = 'article/index/$1';
$route['thu-thuat/([a-zA-Z0-9_-]+).html'] = 'article/view/$1';
$route['dich-vu'] = 'article/service';
$route['dich-vu/([a-zA-Z0-9_-]+).html'] = 'article/view/$1';

$route['danh-muc/([a-zA-Z0-9_-]+)'] = 'category/view/$1';
$route['danh-muc/([a-zA-Z0-9_-]+)/([0-9]+)'] = "category/view/$1/$2";
$route['san-pham/([a-zA-Z0-9_-]+).html'] = 'product/detail/$1';

$route['404_override'] = '';

/* End of file routes.php */
/* Location: ./application/config/routes.php */