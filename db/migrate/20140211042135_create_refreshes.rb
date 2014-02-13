class CreateRefreshes < ActiveRecord::Migration
  def change
    create_table :refreshes do |t|
      t.date :refresh_date
      t.string :refresh_type
      t.integer :env_id

      t.timestamps
    end
  end
end
