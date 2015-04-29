class Game < ActiveRecord::Base
  enum kind: [ :orig, :ftm]
  validates_presence_of :room
  validates_presence_of :max_players
  has_secure_password validations: false
end