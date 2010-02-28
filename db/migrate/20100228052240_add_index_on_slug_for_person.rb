class AddIndexOnSlugForPerson < ActiveRecord::Migration
  def self.up
    add_index :people, :slug
  end

  def self.down
    remove_index :people, :slug
  end
end
