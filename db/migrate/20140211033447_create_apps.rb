class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :dev_lead
      t.string :env_support_lead

      t.timestamps
    end
  end
end
