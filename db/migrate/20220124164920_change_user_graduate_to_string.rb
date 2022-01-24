class ChangeUserGraduateToString < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :graduate, :string
  end
  
  def down
    change_column :users, :graduate, :datetime
  end
end
