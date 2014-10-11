class EventSerializer < ActiveModel::Serializer
    attributes :id, :date_start, :date_end, :description, :type
end
