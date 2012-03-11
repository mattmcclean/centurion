class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.string :name
      t.string :cmd
      t.string :target
      t.integer :interval
      t.text :desc

      t.timestamps
    end
  end
end
