
package SimpleTee;
use strict;

sub TIEHANDLE
{
	my $self = shift;
	bless \@_, $self;
}

sub PRINT
{
	my $self = shift;
	my $ok   = 1;
	for my $fh (@$self)
	{
		print $fh @_ or $ok = 0;
		$fh->flush   or $ok = 0;
	}
	return $ok;
}

1;
