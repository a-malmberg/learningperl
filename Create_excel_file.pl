#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from geeksforgeeks.org/perl-tutorial-learn-perl-with-examples/#OOPs
# writing to an excel file

use Excel::Writer::XLSX;

my $Excelbook = Excel::Writer::XLSX->new( 'GFG_Sample.xlsx' );
my $Excelsheet = $Excelbook->add_worksheet();

$Excelsheet->write( "A1", "Hello" );
$Excelsheet->write( "A2", "GeeksForGeeks" );
$Excelsheet->write( "B1", "Next_Column") ;

$Excelbook->close;


# reading from an excel file
# does not work

# use Spreadsheet::Read qw(ReadData);
# my $book_data = ReadData ('GFG_Sample.xlsx');
# say 'A2: ' . $book_data->[1]{A2};