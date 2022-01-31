class ChangeDatatypePeopleOfCompanyInfo < ActiveRecord::Migration[5.2]
  def change
    change_column :company_infos, :people, :integer
    change_column :company_infos, :capital, :integer
  end
end
