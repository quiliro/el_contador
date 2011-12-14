class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :bussiness_types do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :items do |t|
      t.string   :code
      t.string   :name
      t.string   :description
      t.string   :measure
      t.integer  :stock
      t.decimal  :sale_price
      t.decimal  :purchase_price
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :contacts do |t|
      t.string   :tax_number
      t.string   :name
      t.string   :telephone_number
      t.string   :address
      t.string   :reference_person
      t.string   :bank_account
      t.string   :email
      t.integer  :bussiness_level
      t.text     :notes
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :cities do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :states
    drop_table :bussiness_types
    drop_table :items
    drop_table :contacts
    drop_table :cities
  end
end
