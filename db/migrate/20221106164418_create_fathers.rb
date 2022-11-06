# frozen_string_literal: true

class CreateFathers < ActiveRecord::Migration[6.1]
  def change
    create_table :fathers do |t|
      t.string :name

      t.timestamps
    end
  end
end
