class AddSlugToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :uuid, :string
    add_column :articles, :slug, :string
    add_index :articles, :uuid, unique: true
    add_index :articles, :slug, unique: true
  end
end
