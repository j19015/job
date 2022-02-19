class ChangeDatatypePeopleOfCompanyInfo < ActiveRecord::Migration[5.2]
  def up
    change_column :company_infos, :people, :integer,using: "people::integer"
    change_column :company_infos, :capital, :integer,using: "capital::integer"
  end

  def down
    change_column :company_infos, :people, :string,using: "people::string"
    change_column :company_infos, :capital, :string,using: "capital::string"
  end

end
