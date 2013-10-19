class User < ActiveRecord::Base
  has_many :decks
  has_many :cards, :through => :decks
end
