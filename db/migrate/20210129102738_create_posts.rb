# frozen_string_literal: true

# https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407
class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
