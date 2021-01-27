class Event < ApplicationRecord
  has_many :event_users
  belongs_to :user
end
