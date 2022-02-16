class Company < ApplicationRecord
    #関連付けを行う
    has_many :company_infos, dependent: :destroy
    #nameのnull値を許さない
    validates :name,presence: true
    #nameの値をユニークな値をする
    validates :name,uniqueness: true,length: { minimum: 3, maximum: 50 }
     #nameのnull値を許さない
    validates :kind,presence: true
    
end
