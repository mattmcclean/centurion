class CreateAlertstatuses < ActiveRecord::Migration
  def change
    create_table :alertstatuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
