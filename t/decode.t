
use Test::More tests => 1;
use LaTeX::Recode encode_set => 'full', decode_set => 'full';
use utf8;
use Unicode::Normalize;

my $latex_string       = 'Mu\d{h}ammad ibn M\={u}s\={a} al-Khw\={a}rizm\={\i}';
my $string = latex_decode($latex_string);

is $string => NFD('Muḥammad ibn Mūsā al-Khwārizmī'), 'test 1';

