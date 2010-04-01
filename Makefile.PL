
use strict;
use warnings;

 BEGIN { require 5.010; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::Subversion',
                       'DISTNAME' => 'Dist-Zilla-Plugin-Subversion',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Mark Gardner <mjgardner@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Modern::Perl' => '0',
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'Test::Moose' => '0',
                                             'Test::Most' => '0',
                                             'File::Temp' => '0',
                                             'Dist::Zilla::Plugin::Repository' => '0',
                                             'Text::Template' => '0'
                                           },
                       'ABSTRACT' => 'update your Subversion repository after release',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100910',
                       'PREREQ_PM' => {
                                        'Alien::SVN' => '0',
                                        'Dist::Zilla::Role::AfterRelease' => '0',
                                        'Dist::Zilla::Role::Releaser' => '0',
                                        'MooseX::Types::URI' => '0',
                                        'Dist::Zilla::Role::Plugin' => '0',
                                        'feature' => '0',
                                        'Regexp::DefaultFlags' => '0',
                                        'Moose' => '0',
                                        'Moose::Role' => '0',
                                        'namespace::autoclean' => '0',
                                        'English' => '0',
                                        'Readonly' => '0',
                                        'utf8' => '0',
                                        'Dist::Zilla' => '0',
                                        'Path::Class' => '0',
                                        'mro' => '0',
                                        'Cwd' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



