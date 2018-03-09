<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],

    'facebook' => [
    'client_id' => '764705973705622',
    'client_secret' => 'a5aacec372817f3fefa9d60628ca8d2c',
    'redirect' => 'http://localhost/versity_project/public/login/facebook/callback',
],


//     'google' => [
//     'client_id' =>' 638086369002-rmfeqm4fbtm8vh57g4aqg3q33c3arihb.apps.googleusercontent.com ',
//     'client_secret' => ' ipMioObB5SA-VZC_I8xQ105l ',
//     'redirect' => 'http://localhost/versity_project/public/login/google/callback',
// ],












];
