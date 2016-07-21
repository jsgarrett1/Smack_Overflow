get '/' do
  @categories =  Category.all
  @user = User.find_by(id: session[:user_id])
  erb :index
end
