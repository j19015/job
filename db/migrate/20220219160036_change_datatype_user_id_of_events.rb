class ChangeDatatypeUserIdOfEvents < ActiveRecord::Migration[5.2]
  def up
    change_column :events, :user_id, :integer,using: "user_id::integer"
  end

  def down
    change_column :events, :user_id, :string,using: "user_id::string"
  end
end
