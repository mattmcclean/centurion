class CreateReturncodes < ActiveRecord::Migration
  def change
    create_table :returncodes do |t|
      t.integer :code
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
