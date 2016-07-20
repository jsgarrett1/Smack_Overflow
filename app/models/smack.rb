class Smack < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :category
  belongs_to :user
  has_many :comebacks
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
