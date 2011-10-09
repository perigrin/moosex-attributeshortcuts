package MooseX::AttributeShortcuts::Simple;
use Moose;
use namespace::autoclean;

# ABSTRACT: Simpler Shorthand for common attribute options

use Moose ();
use Moose::Exporter;

my $trait = 'MooseX::AttributeShortcuts::Simple::Meta::Trait::Attribute';

Moose::Exporter->setup_import_methods(
    class_metaroles => { attribute         => [$trait], },
    role_metaroles  => { applied_attribute => [$trait], }
);

__PACKAGE__->meta->make_immutable;
1;
__END__
