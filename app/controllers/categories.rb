get '/categories/:id' do
  @category = Category.find_by(id: params[:id])
  @user = User.find_by(id: session[:user_id])
  erb :'categories/show'
end
