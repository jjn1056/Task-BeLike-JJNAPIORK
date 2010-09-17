#!/usr/bin/env perl

use strict;
use warnings;

use inc::Module::Install 1.00;
all_from 'lib/Task/BeLike/JJNAPIORK.pm';
requires (
    'App::Ack' => '1.92',
    'App::cpanminus' => '1.0012',
    'App::local::lib::helper' => '0.02',
    'Module::Setup' => '0.09',
    'Module::Install' => '1.00',
    'Module::Install::AuthorTests' => '0.002',
    'Module::Install::Repository' => '0.06',
    'Module::Install::AutoManifest' => '0.003',
    'Module::Install::ReadmePodFromPod' => '0.01',
    'Module::Install::ReadmeFromPod' => '0.12',
    'Module::Install::ManifestSkip' => '0.12',
    'Module::Install::Homepage' => '0.01',
    'Module::Install::AutoLicense' => '0.08',
);

readme_from;
manifest_skip;
auto_set_repository;
auto_set_homepage;
auto_manifest;
auto_license;
auto_install;
WriteAll;
