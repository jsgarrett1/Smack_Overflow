get '/category/:category_id/smacks/:id' do
  @smack = Smack.find_by(id: params[:id])
  erb :'smacks/show'
end
