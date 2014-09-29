class Group < ActiveRecord::Base
  belongs_to :promotion
  belongs_to :user
end
