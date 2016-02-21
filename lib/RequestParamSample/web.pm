package RequestParamSample::web;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
  my $self = shift;

  # Router
  my $r = $self->routes;

  # 1. ルーティングでキャプチャされたパラメータの取得
  $r->get('/capture/:name/:age')->to('url_capture#index');

  # 2. Mojo::Message::Requestからのパラメータの取得
  $r->get('/request')->to('message_request#index');
  $r->post('/request/sample')->to('message_request#sample');

  # 3. Mojo::Parametersからのパラメータの取得
  $r->get('/parameters')->to('parameters#index');
  $r->post('/parameters/sample')->to('parameters#sample');
}
1;
