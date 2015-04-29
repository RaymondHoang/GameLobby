class User < ActiveRecord::Base
  attr_accessor :password_confirmation
  has_many :recipes
  has_many :comments
  has_many :conversations, :foreign_key => :sender_id
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  validates :nickname,
    length: {maximum: 50}, uniqueness: true, presence: true
  before_save { |user| user.email = user.email.downcase }
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    presence: true, format: {with: email_regex}, uniqueness: {case_sensitive: false}
  validates :password,
    length: {within: 6..40}
  has_secure_password
end
