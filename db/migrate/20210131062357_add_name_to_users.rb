# frozen_string_literal: true

# https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407
class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_index :users, :name, unique: true
  end
end
