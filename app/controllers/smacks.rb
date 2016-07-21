get '/category/:category_id/smacks/:id' do
  @smack = Smack.find_by(id: params[:id])
  erb :'smacks/show'
end

get '/categories/:category_id/smacks/new' do
  @category = Category.find_by(id: params[:category_id])
  erb :'smacks/new'
end

post '/categories/:category_id/smacks' do
  @category = Category.find_by(id: params[:category_id])
  puts "---------------------"
  p @category
  @smack = Smack.new(title: params[:title], description: params[:description])
  @smack.user = User.find(session[:user_id])

  if @smack.save
    @category.smacks << @smack
    redirect "categories/#{@category.id}"
  else
    @errors = @entry.errors.full_messages
    erb :'smacks/new'
  end
end

