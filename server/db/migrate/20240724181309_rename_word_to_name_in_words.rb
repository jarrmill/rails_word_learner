class RenameWordToNameInWords < ActiveRecord::Migration[7.1]
  def change
    rename_column :words, :word, :name
  end
end
