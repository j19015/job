class ChangeDatatypePeopleOfCompanyInfo < ActiveRecord::Migration[5.2]
  def up
    change_column :company_infos, :people, :integer
    change_column :company_infos, :capital, :integer
  end

  def down
    change_column :company_infos, :people, :string
    change_column :company_infos, :capital, :string
  end

end
