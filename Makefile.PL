use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share 'templates';

WriteMakefile(
  NAME => 'DBICx::AutoDoc',
  ABSTRACT_FROM => 'lib/DBICx/AutoDoc.pm',
  AUTHOR => 'Jason Kohles <email@jasonkohles.com>',
  LICENSE => 'perl',
  VERSION_FROM => 'lib/DBICx/AutoDoc.pm',
  CONFIGURE_REQUIRES => {
    'ExtUtils::MakeMaker' => '6.42',
    'File::ShareDir::Install' => '0',
  },
  PREREQ_PM => {
    'DBIx::Class' => '0',
    'Template' => '0',
    'Carp' => '0',
    'Class::Accessor::Grouped' => '0',
    'FindBin' => '0',
    'Data::Dump' => '0',
    'File::Temp' => '0',
    'Pod::Usage' => '0',
    'Getopt::Long' => '0',
    'Tie::IxHash' => '0',
    'File::ShareDir' => '1.00',
  },
  TEST_REQUIRES => {
    'Test::More' => '0',
  },
  EXE_FILES => [ qw(dbicx-autodoc) ],
  META_MERGE => {
    "meta-spec" => { version => 2 },
    dynamic_config => 0,
    resources => {
      repository => {
        type => 'git',
        url => 'git@github.com:ilmari/dbicx-autodoc.git',
        web => 'https://github.com/ilmari/dbicx-autodoc',
      },
      license => [ 'http://dev.perl.org/licenses/' ],
    },
    no_index => {
      directory => [qw(examples templates xt)],
    },
  },
);

package MY;
use File::ShareDir::Install qw(postamble);
