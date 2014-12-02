#!/usr/bin/env perl
#
# add/upate number of stars against repos in alcatraz-packages.
#
# Run once with -u to flush out old star counts and then re-run
# until you no longer see the message "api rate limit exceeded"
#

use strict;
undef $/;

my $update = $ARGV[0] =~ /-u/;
my $limited;

open JSON, "packages.json" or die "Could not open packages file";
my $json = <JSON>;

$json =~ s@((\n\s+)"url": "https://github.com/(\w+/[^"]+)")(,\n\s+"stars": "?(\d+)"?)*@
    my ($url, $indent, $repo, $stars) = ($1, $2, $3, $5);
    if ( (!$stars || $update) && !$limited ) {
        warn "Fetching $repo\n";
        my $info = `curl https://api.github.com/repos/$repo 2>/dev/null`;
        ($limited) = $info =~ /(API rate limit exceeded)/;
        ($stars) = $info =~ /"stargazers_count": (\d+)/;
    }
    defined($stars) ? "$url,$indent\"stars\": $stars" : $url;
@ge;

warn "Github api rate limit exceed, wait an hour and run again without -u" if $limited;

open JSON, "> packages.json" or die "Could not write to packages file";
print JSON $json;
