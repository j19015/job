class CreateCompanyInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :company_infos do |t|
      t.integer :user_id
      t.integer :company_id
      t.string :info
      t.timestamps
    end
  end
end
