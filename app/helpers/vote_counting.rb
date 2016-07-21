
def total_votes(vote_object)
  vote_count = 0
  vote_object.votes.each do |vote|
    vote_count += vote.value
  end
  vote_count
end

