class CreatePicoposts < ActiveRecord::Migration
  def self.up
    create_table :picoposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :picoposts
  end
end
