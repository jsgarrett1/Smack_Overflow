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
