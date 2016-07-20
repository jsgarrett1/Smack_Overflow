class User < ActiveRecord::Base
  has_many :comebacks
  has_many :smacks
  has_many :votes
  has_many :comments
end
