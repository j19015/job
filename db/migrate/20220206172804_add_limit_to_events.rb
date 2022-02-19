class AddLimitToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :limit, :integer
  end
end
