#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from perltutorial.org/perl-module

use Tutorial_Modules_FileLogger;                                 # load the FileLogger module, call the different subroutines using module_name::subroutine_name

FileLogger::open("logtest.log");

FileLogger::log(1, "This is a test message");

FileLogger::close();    
