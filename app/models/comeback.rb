class Comeback < ActiveRecord::Base
  belongs_to :user
  belongs_to :smack
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
