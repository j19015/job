class AddAfToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :address_type, :string
  end
end
