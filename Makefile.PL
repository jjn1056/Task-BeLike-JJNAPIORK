#!/usr/bin/env perl

use strict;
use warnings;

use inc::Module::Install 1.00;
all_from 'lib/Task/BeLike/JJNAPIORK.pm';
requires (
    'App::Ack' => '1.92',
    'App::cpanminus' => '1.0012',
    'Module::Install' => '1.00',
    'Module::Install::AuthorTests' => '0.002',
    'Module::Install::GithubMeta' => '0.10',
    'Module::Install::AutoManifest' => '0.003',
    'Module::Install::ReadmePodFromPod' => '0.01',
    'Module::Install::ManifestSkip' => '0.10',
    'Module::Setup' => '0.09',
    'App::local::lib::helper' => '0.02',
);

readme_pod_from 'lib/Task/BeLike/JJNAPIORK.pm';
manifest_skip;
auto_manifest;
auto_install;
githubmeta;
WriteAll;
