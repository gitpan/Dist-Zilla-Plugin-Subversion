
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::Subversion',
                       'DISTNAME' => 'Dist-Zilla-Plugin-Subversion',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Mark Gardner <gardnerm@gsicommerce.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'update your Subversion repository after release',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100880',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Role::AfterRelease' => '0',
                                        'Dist::Zilla::Role::Releaser' => '0',
                                        'MooseX::Types::URI' => '0',
                                        'Dist::Zilla::Role::Plugin' => '0',
                                        'Modern::Perl' => '0',
                                        'File::Find' => '0',
                                        'Test::Moose' => '0',
                                        'Test::Most' => '0',
                                        'SVN::Wc' => '0',
                                        'SVN::Repos' => '0',
                                        'Moose' => '0',
                                        'Regexp::DefaultFlags' => '0',
                                        'Moose::Role' => '0',
                                        'namespace::autoclean' => '0',
                                        'English' => '0',
                                        'Dist::Zilla::Plugin::Repository' => '0',
                                        'Readonly' => '0',
                                        'Test::More' => '0',
                                        'Dist::Zilla' => '0',
                                        'File::Temp' => '0',
                                        'Path::Class' => '0',
                                        'SVN::Client' => '0',
                                        'Cwd' => '0',
                                        'Text::Template' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



