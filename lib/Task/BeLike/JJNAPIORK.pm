package Task::BeLike::JJNAPIORK;

use 5.008008;
our $VERSION = '0.03';

=head1 NAME

Task::BeLike::JJNAPIORK - Stuff I always use

=head1 SYNOPSIS

    cpanm Task::BeLike::JJNAPIORK

=head1 DESCRIPTION

When I bootstrap a new project, or when someone wants to contribute to one of
my projects, there's a handful of modules you need which are not listed in the
C<Makefile.PL>.  This module is intended to bundle those together so as to make
it faster for me to bootstrap a new project and to make it easier for anyone
that wants to contribute to a project I am working on.

=head1 USAGE

Typically when I start a new project, I build my C<Makefile.PL> around the
L<Module::Install> ecosystem.  I also use L<App::cpanminus> and a few other bits
to make using L<local::lib> and git easier.  This means before I can even get
started (or a contributor started) we need some unnecessary ceremony.  The 
C<Makefile.PL> is great for managing the dependencies of a project, but it
can't recursively manage its own dependencies, which means that authors (NOT
installers) will always need to install a few bits to get started working.  My
goal here is to reduce that effort, at least for my current workflow.  Hopefully
you will catch some useful ideas that work for you.

Unlike most of the distributions in the Task::BeLike namespace, this is not a
catchall of everything I love to use.  This is a pretty minimum list, most of 
which have no or few dependencies with a very high rate of installation 
success.  So if you want to be like me when starting a new project, this is it!

Typically I assume a locally installed perl (which is probably installed via
L<App::perlbrew>) and nothing else when starting a project.  I then bootstrap a
L<local::lib> managed local directory of the basic dependencies and go from 
there.  I use the online version of L<App::cpanminus> to get this rolling:

  curl http://cpanmin.us/ -L | perl - -l ~/mylocal Task::BeLike::JJNAPIORK

After that, I open a command interpreter who's environment has been fixed up to
find the L<local::lib> which L<App::cpanminus> has created:

  ~/mylocal/bin/localenv bash

After that I will use the project C<Makefile.PL> to install project level 
dependencies, start a new project, etc.

=head1 MODULES INSTALLED

This L<Task> module installs the following

=over 4

=item L<App::cpanminus>

Easier to install CPAN modules

=item L<Module::Install>

Easier to manage your project dependencies

=item L<Module::Install::AuthorTests>

Mark some tests as author only

=item L<Module::Install::GithubMeta>

Add github repository stuff

=item L<Module::Install::AutoManifest>

Make and clean manifest files for me

=item L<Module::Install::ReadmePodFromPod>

Make the readme file I am always forgetting to do.

=item L<Module::Setup>

For when I am too lazy to make my own project skeletons

=item L<App::Ack>

Awesome searching power

=item L<App::local::lib::helper>

Make it easier to use L<local::lib>

=item L<Module::Install::ManifestSkip>

Build a MANIFEST.SKIP file that is sane

=back

=head1 AUTHOR

John Napiorkowski C< <<jjnapiork@cpan.org>> >

=head1 COPYRIGHT & LICENSE

Copyright 2010, John Napiorkowski

This program is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut

1;

