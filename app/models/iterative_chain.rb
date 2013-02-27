class IterativeChain < ActiveRecord::Base
  attr_accessible :num_users
  serialize :chain
end
