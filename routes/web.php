<?php
// Route::group(['prefix' => 'admin','middleware'=>'role:admin'], function () {
//    });


Route::get('/','PagesController@index');

Route::get('login/facebook', 'Auth\FacebookController@redirectToProvider');
Route::get('login/facebook/callback', 'Auth\FacebookController@handleProviderCallback');

// Route::get('login/google', 'Auth\GoogleController@redirectToProvider');
// Route::get('login/google/callback', 'Auth\GoogleController@handleProviderCallback');





Route::get('/admin','admin\AdminLoginController@index');
Route::group(['middleware' => ['revalidate']], function () {
Route::get('/dashboard','admin\AdminController@index')->middleware('role:admin');




});

Auth::routes();

Route::group(['middleware' => ['revalidate']], function () {
Route::group(['prefix'=>'admin','middleware' => ['role:admin']], function () {
    
Route::get('show-contact/{id}','admin\AdminController@show');
Route::post('contact-replay-mail','admin\AdminController@contact_replay_mail');
Route::post('admin-mail','admin\AdminController@admin_mail');
Route::post('advice-category-store','admin\AdminController@store');

Route::resource('/tag','admin\TagController');
Route::resource('/category','admin\CategoryController');
Route::resource('/question','admin\QuestionController');
Route::resource('/article','admin\ArticleController');
Route::resource('/advice','admin\CarrierAdviceController');
//Job route:
Route::get('/jobs','admin\JobController@index');
Route::get('/jobs/{id}','admin\JobController@show');
Route::get('/job-create','admin\JobController@create');
Route::post('/job-category-create','admin\JobController@job_category_create');
Route::delete('/job-category-delete/{id}','admin\JobController@job_category_delete');
Route::delete('/jobs/{id}','admin\JobController@destroy');

Route::post('/new-user-store','admin\GroupController@new_user_store');


Route::get('/groups','admin\GroupController@index');
Route::get('/groups/{id}','admin\GroupController@show_all_posts');

Route::delete('/groups/{id}','admin\GroupController@delele_group');
Route::delete('/remove-group-member/{id}/{group_id}','admin\GroupController@remove_group_member');
Route::delete('/delete-group-posts/{id}','admin\GroupController@delete_group_posts');

Route::delete('/delete-group-post-comments/{id}','admin\GroupController@delete_group_post_comment');


Route::get('/group-users/{id}','admin\GroupController@show_all_users');
Route::get('/allusers','admin\GroupController@all_users');
Route::get('/change-password','admin\GroupController@admin_pass_change');
Route::post('/change-password','admin\GroupController@admin_pass_changes');


Route::get('/group-comments/{id}','admin\GroupController@show_all_post_comments');
Route::get('/question-comments/{id}','admin\QuestionManageController@index');
Route::delete('/question-category-delete/{id}','admin\QuestionManageController@question_category_delete');

Route::delete('/question-comment-delete/{id}','admin\QuestionManageController@question_comment_delete');

Route::post('/question-category-store','admin\QuestionManageController@store');
//admin Article
Route::delete('/article-category-delete/{id}','admin\ArticleManageController@article_category_delete');

Route::delete('/article-comment-delete/{id}','admin\ArticleManageController@article_comment_delete');

Route::get('/article-comments/{id}','admin\ArticleManageController@index');
Route::post('/article-category-store','admin\ArticleManageController@store');


});
});

 //User 

Route::get('/article','user\ArticleController@index');
Route::get('/article/{slug}','user\ArticleController@show');
Route::get('/article_show/{slug}','user\ArticleController@show_with_comments');
Route::get('/tag_post/{id}','user\TagController@show');


 Route::get('/article-categories/{name}','user\ArticleController@article_with_categories');

//Question
Route::get('/question','user\QuestionController@index');
Route::get('/question/{slug}','user\QuestionController@show');
    Route::get('/categories/{name}','user\QuestionController@question_with_categories');
Route::get('/question_show/{slug}','user\QuestionController@show_with_comments');

Route::get('/tagged/{tag_id}','user\TagController@show');






//show_with_comments
//Question Comment Save:
//Comments
Route::post('question_comments/{slug}',['uses'=>'QuestionCommentController@store','as'=>'question_comments.store']);




//Comments
Route::post('comments/{slug}',['uses'=>'CommentController@store','as'=>'comment.store']);


// Route::get('comments/{id}/edit',['uses'=>'CommentController@edit','as'=>'comment.edit']);
// Route::put('comments/{id}',['uses'=>'CommentController@update','as'=>'comment.update']);
// Route::get('comments/{id}',['uses'=>'CommentController@delete','as'=>'comment.delete']);
// Route::delete('comments/{id}',['uses'=>'CommentController@destroy','as'=>'comment.destroy']);



//Replay Controller
Route::post('replies/{comment_id}',['uses'=>'ReplayController@store','as'=>'replay.store']);

//Replay Controller
Route::post('question_replies/{comment_id}',['uses'=>'QuestionReplayController@store','as'=>'question_replies.store']);






Route::get('/home', 'HomeController@index');


//Job Router url:
// Route::get('/jobs','JobController@index');

Route::get('/jobs','JobController@index');

Route::get('/job_details/{id}','JobController@show');

Route::post('/search-job','JobController@job_search');
Route::get('/search-job','JobController@job_search_value');
Route::get('search-location','JobController@search_location');

Route::get('/carrier-advice','user\AlertController@carrier_advice');
Route::get('/carrier-advice/{slug}','user\AlertController@carrier_advice_details');
Route::post('/advice-comment','user\AlertController@advice_comment');


// Question Filter
Route::get('/most-viewed','FilterController@most_view');
Route::get('/most_discuss','FilterController@most_discuss');
Route::get('/last-week','FilterController@last_week_top');
Route::get('/last-month','FilterController@last_month_top');
Route::get('/last-year','FilterController@last_year_top');
Route::get('/old-question','FilterController@old_question');

// Article Filter
Route::get('/most-viewed-articles','ArticleFilterController@most_view');
Route::get('/most-discuss-articles','ArticleFilterController@most_discuss');
Route::get('/last-week-articles','ArticleFilterController@last_week_top');
Route::get('/last-month-articles','ArticleFilterController@last_month_top');
Route::get('/last-year-articles','ArticleFilterController@last_year_top');
Route::get('/old-article','ArticleFilterController@old_articles');

Route::get('/search-groups','user\GroupController@search_group');
Route::group(['middleware' => ['revalidate']], function () {
Route::group(['middleware' => ['auth']], function () {
   Route::get('search-autocomplete', 'SearchController@autocomplete');
   Route::post('add-member', 'user\GroupController@add_member');

//Goto Search page
   Route::get('group-search', 'user\GroupController@group_search');

   //Auto Search
    Route::get('search-group', 'user\GroupController@search_group');
    Route::post('search-group', 'user\GroupController@search_find');
   Route::get('/groups/{id}','user\GroupController@show');
Route::get('/group-members/{id}','user\GroupController@group_members');
Route::get('/remove-group-member/{id}/{group_id}','user\GroupController@remove_group_members');
Route::get('/leave-group-member/{id}/{group_id}','user\GroupController@leave_group_members');
   Route::get('/post-details/{group_id}/{posts_id}','user\GroupController@post_details');
   Route::post('/post-comments','user\GroupCommentsController@store');


//Group 
  Route::get('/group','user\GroupController@create');
  Route::post('/group-post','user\GroupController@store');
  Route::post('/save-group','user\GroupController@save_group');
Route::get('/join-groups/{id}','user\GroupController@join_group');
  //Job Controller
  Route::get('/job_posts','JobController@job_posts');
  Route::post('/job','JobController@store');

Route::get('/job-save/{id}','JobController@jobs_save');
Route::get('/job-unsave/{id}','JobController@jobs_unsave');
//Profile Route:
  Route::get('profile', 'user\ProfileController@index');
Route::post('edit-profile', 'user\editProfileController@edit_profile');
Route::post('update-profile', 'user\editProfileController@update_profile');





Route::post('/question-featured','user\ProfileController@question_featured_store');
Route::post('/question-featured-update','user\ProfileController@question_featured_update');
Route::post('/article-featured-update','user\ProfileController@article_featured_update');
Route::post('/article-featured','user\ProfileController@article_featured_store');

#JobAlertController
  // Route::get('/jobs-alert','user\JobAlertController@index');
  // Route::post('/jobs-alert','user\JobAlertController@store');
Route::get('/job-alert','user\AlertController@index');

Route::post('/job-alert','user\AlertController@store');
Route::post('/update-job-alert','user\AlertController@update');


  Route::get('/jobs-apply/{id}','user\JobApplyController@index');
  Route::post('/jobs-apply/{id}','user\JobApplyController@store');

//Contact Controller

  Route::get('contact','user\ContactController@index');
  Route::post('contact','user\ContactController@store');
Route::get('/alert-jobs','JobController@show_alert_jobs');

Route::get('/article_create','user\ArticleController@create');
Route::post('/article_store','user\ArticleController@store');
Route::get('/question_create','user\QuestionController@create');
Route::post('/question_store','user\QuestionController@store');
Route::put('question/{slug}',['uses'=>'user\QuestionController@update','as'=>'question.update']);
Route::get('question/{slug}/edit',['uses'=>'user\QuestionController@edit','as'=>'question.edit']);
Route::put('article/{slug}',['uses'=>'user\ArticleController@update','as'=>'article.update']);
Route::get('article/{slug}/edit',['uses'=>'user\ArticleController@edit','as'=>'article.edit']);
Route::delete('article/{id}',['uses'=>'user\ArticleController@destroy','as'=>'article.destroy']);
//user_change_password
Route::get('/change-password','user\ProfileController@user_pass_change');
Route::post('/change-password','user\ProfileController@user_pass_changes');
});

});