class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    #人数
    add_column :company_infos , :people , :string
    
    #資本金
    add_column :company_infos, :capital, :string
    
    #初任給
    add_column :company_infos, :fast_money, :integer
    
    #平均年収
    add_column :company_infos, :avg_money, :integer
    
    #選考状況
    add_column :company_infos, :selection, :string
    
    #会社のHP
    add_column :company_infos, :hp, :string
    
    #ID
    add_column :company_infos, :intern_id, :string
    
    #pass
    add_column :company_infos, :intern_pass, :string
    
    #テスト形式
    add_column :company_infos, :test, :string
    
    #ES締切
    add_column :company_infos, :finish_es_day, :datetime
    
    #テスト締切
    add_column :company_infos, :finish_test_day, :datetime
  end
end
