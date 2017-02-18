class Like < ActiveRecord::Base
  belongs_to :timeline
  belongs_to :user
  
  validates   :reaction, presence: true
end
