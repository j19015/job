class CompanyInfo < ApplicationRecord
    belongs_to :user
    belongs_to :company
    validates :info,presence: true
    validates :id,uniqueness: {scope: [:user_id, :company_id]}
end
