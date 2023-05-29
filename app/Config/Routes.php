<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.

// $routes->get('/', 'Home::index');
$routes->get('/', 'User::index');


$routes->get('/admin', 'Admin::index', ['filter' => 'role:admin']);
$routes->get('/admin/index', 'Admin::index', ['filter' => 'role:admin']);
$routes->get('/admin/(:num)', 'Admin::detail/$1', ['filter' => 'role:admin']);
$routes->post('/periksa/konsultasi/add', 'Periksa::add');
$routes->get('/periksa/konsultasi/pertanyaan/(:any)', 'Periksa::pertanyaan/$1');
$routes->post('/periksa/konsultasi/olah', 'Periksa::olah');
$routes->get('/periksa/konsultasi/hasil', 'Periksa::hasil');
$routes->get('/periksa/konsultasi/hasil/simpan', 'Periksa::simpan');
$routes->get('/periksa/konsultasi/cetak', 'Periksa::cetak');
$routes->get('/periksa/laporan', 'Laporan::index');
$routes->get('/periksa/laporan/cetak/(:num)', 'Laporan::cetak/$1');
$routes->get('/periksa/laporan/hapus/(:num)', 'Laporan::hapus/$1');
/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
