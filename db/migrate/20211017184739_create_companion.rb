# frozen_string_literal: true

class CreateCompanion < ActiveRecord::Migration[6.1]
  def change
    create_table :companions do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end
