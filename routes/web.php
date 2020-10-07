<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('welcome');
});

Auth::routes();

//frontend
Route::get('/', 'HomeController@index');
Route::get('posts/{id}','HomeController@detail_post');
Route::get('portofolio/{id}', 'HomeController@detail_porto');
Route::post('post/{post}/comment','HomeController@store')->name('post.comment.store');
Route::get('blog','HomeController@blog');
Route::get('portofolio','HomeController@portofolio');
Route::get('category/post/{id}','HomeController@postbyCategory');
Route::get('search', 'HomeController@search');
Route::get('contactme','HomeController@contact');
Route::post('contact/add','ContactController@store');
Route::post('subscriber/add','SubscriberController@store');
Route::get('privacy-policy','HomeController@privacy_policy');


Route::group(['middleware'=>'auth'], function(){
    Route::get('dashboard','DashboardController@index');
    Route::delete('dashboard/delete/visitor/{id}','DashboardController@delete');

    //category
    Route::get('category','CategoryController@index');
    Route::get('category/add','CategoryController@add');
    Route::post('category/add','CategoryController@store');
    Route::get('category/{id}','CategoryController@edit');
    Route::put('category/edit/{id}','CategoryController@update');
    Route::delete('category/delete/{id}','CategoryController@delete');

    //category_p
    Route::get('category_p','Category_pController@index');
    Route::get('category_p/add','Category_pController@add');
    Route::post('category_p/add','Category_pController@store');
    Route::get('category_p/{id}','Category_pController@edit');
    Route::put('category_p/edit/{id}','Category_pController@update');
    Route::delete('category_p/delete/{id}','Category_pController@delete');

    //post
    Route::get('post','PostController@index');
    Route::get('post/add','PostController@add');
    Route::post('post/add','PostController@store');
    Route::get('post/edit/{id}','PostController@edit');
    Route::put('post/update/{id}','PostController@update');
    Route::get('publish/{id}','PostController@publish');
    Route::get('unpublish/{id}','PostController@unpublish');
    Route::get('post/detail/{id}','PostController@detail');
    Route::delete('post/delete/{id}','PostController@delete');

    //comment
    Route::get('comment','CommentController@index');
    Route::get('comment/{id}','CommentController@edit');
    Route::delete('comment/delete/{id}','CommentController@delete');
    Route::post('balas/{post}/comment','CommentController@store')->name('balas.comment.store');

    //comment
    Route::get('contact','ContactController@index');
    Route::get('contact/{id}','ContactController@edit');
    Route::delete('contact/delete/{id}','ContactController@delete');

    //subscriber
    Route::get('subscriber','SubscriberController@index');
    Route::delete('subscriber/delete/{id}','SubscriberController@delete');

    Route::get('users','AddUserController@index');
    Route::get('users/add','AddUserController@add');
    Route::post('users/add','AddUserController@store');
    Route::get('users/edit/{id}','AddUserController@edit');
    Route::put('users/ubahprofile','AddUserController@updateprofile');
    Route::put('users/ubahpassword','AddUserController@updatepassword');
    Route::get('profile','AddUserController@profile');
    Route::delete('users/{id}','AddUserController@delete');

    //maintenance
    Route::get('maintenance/add/{id}','MaintenanceController@add');
    Route::put('maintenance/add/{id}','MaintenanceController@update');

});


Route::get('/home', function () {
    return redirect('dashboard');
});

Route::get('keluar', function () {
    \Auth::logout();
    return redirect('/');
});
