class Event < ActiveRecord::Base
    belongs_to :promotion
    has_many :timesheets
end
