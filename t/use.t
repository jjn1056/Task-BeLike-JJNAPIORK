use strict;
use warnings;
use Test::More;

use_ok 'Task::BeLike::JJNAPIORK';
use_ok 'App::cpanminus';
use_ok 'Module::Install';
use_ok 'Module::Install::AuthorTests';
use_ok 'Module::Install::GithubMeta';
use_ok 'Module::Install::AutoManifest';
use_ok 'Module::Install::ReadmePodFromPod';
use_ok 'Module::Setup';
use_ok 'App::Ack';
use_ok 'App::local::lib::helper';
use_ok 'Carp::REPL';
use_ok 'App::Nopaste';

done_testing();
