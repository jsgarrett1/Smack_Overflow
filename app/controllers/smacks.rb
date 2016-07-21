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

post '/smacks/:id/up_vote' do
  @smack = Smack.find(params[:id])
  @smack.votes.create(value: 1)
  erb :'smacks/show'
end

post '/smacks/:id/down_vote' do
  @smack = Smack.find(params[:id])
  @smack.votes.create(value: -1)
  erb :'smacks/show'
end

post '/categories/:category_id/smacks/:smack_id/comebacks/new' do

  if request.xhr?
    user = User.find(session[:user_id])
    smack = Smack.find(params[:smack_id])
    comeback = Comeback.create(description: params[:comeback], user: user, smack: smack)
    puts "worked"
  else
    user = User.find(session[:user_id])
    category = Category.find(params[:category_id])
    smack = Smack.find(params[:smack_id])
    comeback = Comeback.create(description: params[:comeback], user: user, smack: smack)
    puts "worked"
    redirect "/category/#{category.id}/smacks/#{smack.id}"
  end

end

post "/categories/:category_id/smacks/:smack_id/comments/new" do

  if request.xhr?
    user = User.find(session[:user_id])
    smack = Smack.find(params[:smack_id])
    comment = Comment.create(description: params[:smack_comment], user: user, smack: smack)
  else
    user = User.find(session[:user_id])
    category = Category.find(params[:category_id])
    smack = Smack.find(params[:smack_id])
    comment = Comment.create(description: params[:smack_comment], user: user, smack: smack)
    redirect "/category/#{category.id}/smacks/#{smack.id}"
  end

end
