class User < ActiveRecord::Base
  has_many :comebacks
  has_many :smacks
  has_many :votes
  has_many :comments

  validates :email, presence: true
  validates :username, presence: true
  validates :password_hash, presence: true
  validate :password_longer_than_six_characters
  validates_uniqueness_of :email
  validates_uniqueness_of :username

  def user_points
    total = 0
    self.smacks.each do |smack|
      total += total_votes(smack)
    end
    total
  end


  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @plain_text_password = new_password
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def password_longer_than_six_characters
    errors.add(:password_hash, "must be longer than six characters") unless
      @plain_text_password  && @plain_text_password.length > 6
  end

  def authenticate(input_password)
    self.password == input_password
  end

end
