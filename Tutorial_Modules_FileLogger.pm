#!perl
use strict;
use warnings;
use v5.14;
use utf8;

# from perltutorial.org/perl-module

package FileLogger;         # make the module into a package: FileLogger.pm

my $LEVEL = 1;              # set the global variable $LEVEL so that any subroutine can access it = default log level

sub open{                   # develop subroutines to handle logging functionality, open log file for writing log messages
    my $logfile = shift;
    # open log file for appending
    open(LFH, '>>', $logfile) or die "cannot open the log file $logfile: $!";
    # write time:
    print LFH "Time: ", scalar(localtime), "\n";    
}

sub log {                   # append log messages to the log file if the input log level is lower than the current module's log level
    my($log_level, $log_msg) = @_;
    
    if ($log_level <= $LEVEL) {
        print LFH "$log_msg\n";
    }  
}

sub close{                  # close the log filehandle
    close LFH;
}

sub set_level {             # allow other programs to change the log level, use regex to confirm that the log level passed is a number before setting the module log level
    my $log_level = shift;
    
    if ($log_level =~ /^\d+$/) {
        $LEVEL = $log_level;
    }
    
}

1;

# to use a module in perl you can use either: do, require or use

# - do - looks for the module file by searching the @INC path. If perl finds teh file it places the code inside the calling program and executes it. Otherwise,
# perl will skip the do statement silently

# - require - loads the module file once. If you put the require with the same file twice, perl will ignore it. Perl will issue an error message if not found

# - use - is similar to require, except perl applies it before the program starts. This is the reason why you cannot use the use statement with condition
# statements like if-else. You often use the use statement to include a file in your program.