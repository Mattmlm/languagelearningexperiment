class UserEntry < ActiveRecord::Base
  attr_accessible :chain_id, :pairs
  serialize :pairs
  
  belongs_to :iterative_chain
end
