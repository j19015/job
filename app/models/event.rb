class Event < ApplicationRecord
    belongs_to :user
    validates :title,presence: true,length: { minimum: 3, maximum: 20 }
    validates :contents,presence: true,length: { minimum: 3, maximum: 50 }
    validates :deadline,presence: true
    validates :event,presence: true
    validates :address,presence: true,length:{ minimum: 3, maximum: 30 }
    validates :address_type,presence: true
    #validates :join,presence: true
end