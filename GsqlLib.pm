package GsqlLib;

use strict;
use warnings;

use Exporter 'import';


our @EXPORT = qw(
  system_log
);

BEGIN {
	delete $ENV{LANGUAGE};
	delete $ENV{LC_ALL};
	$ENV{LC_MESSAGES} = 'C';

	delete $ENV{PGCONNECT_TIMEOUT};
	delete $ENV{PGDATA};
	delete $ENV{PGDATABASE};
	delete $ENV{PGHOSTADDR};
	delete $ENV{PGREQUIRESSL};
	delete $ENV{PGSERVICE};
	delete $ENV{PGSSLMODE};
	delete $ENV{PGUSER};
	delete $ENV{PGPORT};
	delete $ENV{PGHOST};
}

END {

}


sub system_log
{
	print("# Running: " . join(" ", @_) . "\n");
	return system(@_);
}

1;