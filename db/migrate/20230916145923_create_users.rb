# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unigue: true }
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
