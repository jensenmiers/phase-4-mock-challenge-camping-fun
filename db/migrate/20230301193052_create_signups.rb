class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t|
      t.integer :time
      t.datetime :created_at
      t.datetime :updated_at
      t.references :camper, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

    end
  end
end
