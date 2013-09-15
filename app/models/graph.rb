class Graph < ActiveRecord::Base
  attr_accessible :graph_code, :user_id
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :graph_code, presence: true
  validates :user_id, presence: true
end
