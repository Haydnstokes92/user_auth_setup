class UserAuthApp < Sinatra::Base
  get '/' do
    erb(:index)
  end
end