class ChecksSubscriptions < ActiveRecord::Migration
  def up
    create_table :checks_subscriptions, :id => false do |t|
      t.references :check, :null => false
      t.references :subscription, :null => false
    end
    add_index(:checks_subscriptions, [:check_id, :subscription_id], :unique => true)
  end

  def down
  end
end
