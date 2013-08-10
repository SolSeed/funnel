class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at

      t.timestamps
    end

    add_index :subscriptions, :email,              :unique => true
    add_index :subscriptions, :confirmation_token, :unique => true
  end
end
