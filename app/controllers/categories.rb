get '/categories/:id' do
  @category = Category.find_by(id: params[:id])
  erb :'categories/show'
end
