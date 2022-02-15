class Question < ApplicationRecord
    validates :question,presence: true,length: { minimum: 3, maximum: 50 }
    validates :question_kind,presence: true
end
