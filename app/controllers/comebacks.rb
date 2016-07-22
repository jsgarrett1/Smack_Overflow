post '/comebacks/:id/up_vote' do
  @comeback = Comeback.find(params[:id])
  @comeback.votes.create(value: 1)
  @smack = @comeback.smack
  erb :'smacks/show'
end

post '/comebacks/:id/down_vote' do
  @comeback = Comeback.find(params[:id])
  @comeback.votes.create(value: -1)
  @smack = @comeback.smack
  erb :'smacks/show'
end

post "/categories/:category_id/smacks/:smack_id/comebacks/:comeback_id/comments/new" do

  if request.xhr?
    user = User.find(session[:user_id])
    category = Category.find(params[:category_id])
    comeback = Comeback.find(params[:comeback_id])
    comment = Comment.create(description: params[:comeback_comment], user: user, commentable_id: comeback.id, commentable_type: 'Comeback')
  else
    user = User.find(session[:user_id])
    category = Category.find(params[:category_id])
    comeback = Comeback.find(params[:comeback_id])
    comment = Comment.create(description: params[:comeback_comment], user: user, commentable_id: comeback.id, commentable_type: 'Comeback')
    redirect "/category/#{category.id}/smacks/#{params[:smack_id]}"
  end

end
