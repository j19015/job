class Question < ApplicationRecord
    validates :question,presence: true
    validates :question_kind,presence: true
end
