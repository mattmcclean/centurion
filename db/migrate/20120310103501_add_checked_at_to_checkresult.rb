class AddCheckedAtToCheckresult < ActiveRecord::Migration
  def change
    add_column :checkresults, :checked_at, :datetime

  end
end
