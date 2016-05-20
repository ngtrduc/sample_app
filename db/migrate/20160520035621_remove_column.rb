class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :users, :passwoed_digest
  end
end
