class IterativeChain < ActiveRecord::Base
  attr_accessible :num_users, :chain
  serialize :chain
  
  has_many :user_entries, dependent: :destroy
end
