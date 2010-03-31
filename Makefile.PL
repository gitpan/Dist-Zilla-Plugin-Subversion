
use strict;
use warnings;



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
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'Test::Moose' => '0',
                                             'Test::Most' => '0',
                                             'File::Temp' => '0',
                                             'SVN::Repos' => '0',
                                             'Dist::Zilla::Plugin::Repository' => '0',
                                             'Text::Template' => '0'
                                           },
                       'ABSTRACT' => 'update your Subversion repository after release',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100900',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Role::AfterRelease' => '0',
                                        'Dist::Zilla::Role::Releaser' => '0',
                                        'MooseX::Types::URI' => '0',
                                        'Dist::Zilla::Role::Plugin' => '0',
                                        'Modern::Perl' => '0',
                                        'SVN::Wc' => '0',
                                        'Regexp::DefaultFlags' => '0',
                                        'Moose' => '0',
                                        'Moose::Role' => '0',
                                        'namespace::autoclean' => '0',
                                        'English' => '0',
                                        'Readonly' => '0',
                                        'Dist::Zilla' => '0',
                                        'Path::Class' => '0',
                                        'Cwd' => '0',
                                        'SVN::Client' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



