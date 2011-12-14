class RemoveForeignKey < ActiveRecord::Migration
  def self.up
    remove_column :contacts, :bussiness_level
  end

  def self.down
    add_column :contacts, :bussiness_level, :integer
  end
end
