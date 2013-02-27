class UserEntry < ActiveRecord::Base
  attr_accessible :chain_id
  serialize :pairs
end
