class AddSlugToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :slug, :string
  end

  def self.down
    remove_column :people, :slug
  end
end
