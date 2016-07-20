get '/users/new' do


  erb :'/users/new'
end

post '/users' do
  email = params[:email]
  username = params[:user_name]
  password = params[:password]

  user = User.new({email: email, username: username})
  user.password = password

  if user.valid?
    user.save!
    redirect '/'
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end

end
