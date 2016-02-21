package RequestParamSample::web::Controller::UrlCapture;
use Mojo::Base 'Mojolicious::Controller';

sub index {
  my $self = shift;

  $self->render('text' => 
  	# urlはurl_forで取得できる
  	"url  : " . $self->url_for . "<br>" . 

  	# キャプチャされたパラメータは$self->paramで取得できる
  	"name : " . $self->param('name') . "<br>" . 

  	# キャプチャされたパラメータは$self->stashでも取得できる
  	"age  : " . $self->stash('age')
  );
}

1;
