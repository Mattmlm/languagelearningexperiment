class UserEntry < ActiveRecord::Base
  attr_accessible :iterative_chain_id, :pairs
  serialize :pairs
  
  belongs_to :iterative_chain
end
