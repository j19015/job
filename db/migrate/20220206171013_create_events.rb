class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :user_id
      t.string :title
      t.string :contents
      t.datetime :deadline
      t.string :event

      t.timestamps
    end
  end
end
