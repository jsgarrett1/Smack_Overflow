get '/category/:category_id/smacks/:id' do
  @smack = Smack.find_by(id: params[:id])
  erb :'smacks/show'
end

get '/categories/:category_id/smacks/new' do
  @category = Category.find_by(id: params[:category_id])
  erb :'smacks/new'
end

post '/categories/:category_id/smacks' do
  @smack = Smack.new(params[:smack])

  if @smack.save
    redirect "smacks/#{smack.id}"
  else
    @errors = @entry.errors.full_messages
    erb :'smacks/new'
  end
end

