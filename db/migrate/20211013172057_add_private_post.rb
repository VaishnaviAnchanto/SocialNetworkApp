# frozen_string_literal: true

class AddPrivatePost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :private, :boolean, default: false
  end
end
