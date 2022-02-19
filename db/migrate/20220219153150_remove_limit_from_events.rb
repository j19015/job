class RemoveLimitFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :limit, :integer
  end
end
