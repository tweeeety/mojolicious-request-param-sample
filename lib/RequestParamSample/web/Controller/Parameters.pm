package RequestParamSample::web::Controller::Parameters;
use Mojo::Base 'Mojolicious::Controller';
use Data::Dumper;

sub index {
  my $self = shift;
  $self->render(msg => 'mojo parameters sample');
}

sub sample {
  my $self = shift;

  # $self->req->paramsでMojo::Parametersオブジェクトが取得できる
  my $params = $self->req->params;

  # $self->req->params->to_hashでMojo::Parametersが
  # パラメータをhash形式で返却してくれる
  my $params_hash = $self->req->params->to_hash;

  # 出力
  $self->render('text' => '$params_hash : ' . Dumper $params_hash);
}

1;
