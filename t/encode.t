
use Test::More tests => 1;
use LaTeX::Recode;
use utf8;

LaTeX::Recode->init_sets('full','full'); ## need to get rid of this

my $string       = 'Muḥammad ibn Mūsā al-Khwārizmī';
my $latex_string = latex_encode($string);

is $latex_string => 'Mu\d{h}ammad ibn M\=us\=a al-Khw\=arizm\={\i}', 'test 1';
