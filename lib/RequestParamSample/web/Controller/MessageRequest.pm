package RequestParamSample::web::Controller::MessageRequest;
use Mojo::Base 'Mojolicious::Controller';
use Data::Dumper;

sub index {
  my $self = shift;
  $self->render(msg => 'mojo message request sample');
}

sub sample {
  my $self = shift;

  # $self->req->paramでget|postされたパラメータが取得できる
  my $name = $self->req->param("name");
  my $age  = $self->req->param("age");
  my $tel  = $self->req->param("tel");

  # $self->paramは$self->req->paramのショートカットなので同じ
  my $name2 = $self->param("name");

  # 出力
  $self->render('text' =>
  	'name  : '  . $name  . "<br/>" .
  	'age   : '  . $age   . "<br/>" .
  	'tel   : '  . $tel   . "<br/>" . 
  	'name2 : '  . $name2 . "<br/>"
  );
}

1;
