
use Test::More;
use LaTeX::Recode;
use utf8;
use Unicode::Normalize;

LaTeX::Recode->init_sets('full','full'); ## need to get rid of this

my $latex_string       = 'Mu\d{h}ammad ibn M\={u}s\={a} al-Khw\={a}rizm\={\i}';
my $string = latex_decode($latex_string);

#is $string => NFD('Muḥammad ibn Mūsā al-Khwārizmī'), 'test 1';

my $x = NFD("Muḥammad ibn Mūsā al-Khwārizmī");

is ($string, $x);

for (my $var = 0; $var < length($x); $var++) {
	is substr($x,$var,1), substr($string, $var, 1), 'xx';
}

done_testing();