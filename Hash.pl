use warnings;
use strict;
use 5.010;

# defines country => language hash
my %langs = ( England => 'English',
 France => 'French', 
 Spain => 'Spanish', 
 China => 'Chinese', 
 Germany => 'German');
# get language of England
my $lang = $langs{'England'}; # English
say $lang;

