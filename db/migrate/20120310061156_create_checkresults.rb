class CreateCheckresults < ActiveRecord::Migration
  def change
    create_table :checkresults do |t|
      t.string :service
      t.references :returncode
      t.references :node
      t.references :check
      t.text :info

      t.timestamps
    end
    add_index :checkresults, :returncode_id
    add_index :checkresults, :node_id
    add_index :checkresults, :check_id
  end
end
