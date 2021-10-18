# frozen_string_literal: true

class AddingComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :data
      t.timestamps
    end
  end
end
