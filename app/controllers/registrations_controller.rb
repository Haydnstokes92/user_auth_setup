class UserAuthApp < Sinatra::Base
  get '/registrations/new' do
    erb(:'registrations/new')
  end

  post '/registrations' do
    @user = User.new(params[:email])
    @user.password = params[:password]
    @user.save!

    redirect ('/')
  end
end