post '/comebacks/:id/up_vote' do
  @comeback = Comeback.find(params[:id])
  @comeback.votes.create(value: 1)
  @smack = @comeback.smack

  if request.xhr?
    total_votes(@comeback).to_s
  else
    erb :'smacks/show'
  end

end

post '/comebacks/:id/down_vote' do
  @comeback = Comeback.find(params[:id])
  @comeback.votes.create(value: -1)
  @smack = @comeback.smack

  if request.xhr?
    total_votes(@comeback).to_s
  else
    erb :'smacks/show'
  end

end
