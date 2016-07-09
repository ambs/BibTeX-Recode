
use Test::More tests => 1;
use LaTeX::Recode encode_set => 'full', decode_set => 'full';
use utf8;


my $string       = 'Muḥammad ibn Mūsā al-Khwārizmī';
my $latex_string = latex_encode($string);

is $latex_string => 'Mu\d{h}ammad ibn M\={u}s\={a} al-Khw\={a}rizm\={\i}', 'test 1';

