class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.references :alertstatus
      t.references :checkresult

      t.timestamps
    end
    add_index :alerts, :alertstatus_id
    add_index :alerts, :checkresult_id
  end
end
