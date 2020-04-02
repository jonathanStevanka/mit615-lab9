class AddSlugToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :uuid, :string
    add_column :comments, :slug, :string
    add_index :comments, :uuid, unique: true
    add_index :comments, :slug, unique: true
  end
end
