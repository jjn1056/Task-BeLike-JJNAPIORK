#!/usr/bin/env perl

use strict;
use warnings;
use inc::Module::Install 1.00;
use Module::Install::Repository 0.06;
use Module::Install::AutoManifest 0.003;
use Module::Install::ReadmeMarkdownFromPod 0.003;
use Module::Install::Homepage 0.01;
use Module::Install::AutoLicense 0.08;
use Module::Install::ManifestSkip 0.14;

test_requires 'Test::More';

requires (
    'App::cpanminus' => '1.0014',
    'App::local::lib::helper' => '0.02',
    'Module::Setup' => '0.09',
    'Module::Setup::Flavor::JJNAPIORK' => '0.01',
    'Module::Install' => '1.00',
    'Module::Install::AuthorTests' => '0.002',
    'Module::Install::Repository' => '0.06',
    'Module::Install::AutoManifest' => '0.003',
    'Module::Install::ReadmeMarkdownFromPod' => '0.03',
    'Module::Install::ReadmeFromPod' => '0.12',
    'Module::Install::ManifestSkip' => '0.14',
    'Module::Install::Homepage' => '0.01',
    'Module::Install::AutoLicense' => '0.08',
);

all_from 'lib/Task/BeLike/JJNAPIORK.pm';
readme_markdown_from_pod;
auto_set_repository;
auto_set_homepage;
auto_manifest;
auto_license;
auto_install;
manifest_skip;
WriteAll;
