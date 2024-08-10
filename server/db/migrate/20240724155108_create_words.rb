class CreateWords < ActiveRecord::Migration[7.1]
  def change
    create_table :words do |t|
      t.string :word
      t.integer :proficiency
      t.datetime :last_updated_at
      t.string :definition

      t.timestamps
    end
  end
end
