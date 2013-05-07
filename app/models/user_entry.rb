class UserEntry < ActiveRecord::Base
  attr_accessible :iterative_chain_id, :pairs
  serialize :pairs
end
