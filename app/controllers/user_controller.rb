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

get '/users/login' do

  erb :'/users/login'

end

delete "/users/logout" do
  session[:user_id] = nil
  redirect '/'
end

post '/users/login' do
  email = params[:email]
  password = params[:password]

  user = User.find_by(email: email)
  if user && user.authenticate(password)
    session[:user_id] = user.id
    redirect '/'
  else
    @errors = "Your login information is not correct."
    erb :'/users/login'
  end

end
