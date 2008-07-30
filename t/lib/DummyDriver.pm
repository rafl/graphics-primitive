package # hide from the CPAN
    DummyDriver;
use Moose;

with 'Graphics::Primitive::Driver';

has 'draw_component_called' => (
    is => 'rw',
    isa => 'Int',
    default => sub { 0 }
);

sub _do_stroke { }

sub _draw_canvas { }

sub _draw_component {
    my ($self, $comp) = @_;

    $self->draw_component_called(
        $self->draw_component_called + 1
    );
}

sub _draw_line { }

sub _draw_textbox { }

sub data { }

sub get_text_bounding_box { }

sub write { }

no Moose;
1;