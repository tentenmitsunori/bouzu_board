class Board < ActiveRecord::Base
  belongs_to :user
  has_many :articles
end