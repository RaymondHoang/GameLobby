{"filter":false,"title":"user.rb","tooltip":"/app/models/user.rb","undoManager":{"mark":4,"position":4,"stack":[[{"group":"doc","deltas":[{"start":{"row":3,"column":20},"end":{"row":4,"column":0},"action":"insert","lines":["",""]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":2},"end":{"row":5,"column":45},"action":"insert","lines":["has_many :friendships","  has_many :friends, :through => :friendships"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":45},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":2},"end":{"row":7,"column":79},"action":"insert","lines":["  has_many :inverse_friendships, :class_name => \"Friendship\", :foreign_key => \"friend_id\"","  has_many :inverse_friends, :through => :inverse_friendships, :source => :user"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"remove","lines":["  "]}]}]]},"ace":{"folds":[],"scrolltop":9.5,"scrollleft":0,"selection":{"start":{"row":6,"column":2},"end":{"row":6,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1429145816399,"hash":"6de942e0459e4dd0312351d5f8ce9a0eb7e3e671"}