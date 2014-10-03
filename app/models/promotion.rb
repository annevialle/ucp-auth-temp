class Promotion < ActiveRecord::Base
    has_many :groups
    belongs_to :formation
    has_many :users, through: :groups
    has_many :events
end
