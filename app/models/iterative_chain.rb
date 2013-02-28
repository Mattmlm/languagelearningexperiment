class IterativeChain < ActiveRecord::Base
  attr_accessible :num_users, :chain
  serialize :chain
end
