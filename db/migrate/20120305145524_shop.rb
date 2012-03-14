class Shop < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name,  :limit => 20*4,     :null => false, :default => ""
      t.string :url
      t.string :owner,  :limit => 10*4,     :null => false, :default => "" # owner name
      t.string :owner_id # owner id card number
      t.integer :province,  :limit => 2,  :null => false, :default => 0 
      t.integer :city,  :limit => 3,  :null => false, :default => 0 
      t.integer :district,  :limit => 4,  :null => false, :default => 0
      t.string :address,  :limit => 100*4,  :null => false, :default => "" # shop address detail
      #t.string :phone
      #t.string :email
      #t.string :login
      #t.string :password      
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name, :limit => 50*4,     :null => false, :default => ""
      t.string :description, :limit => 100*4,  :default => ""
      t.string :type, :limit => 1,  :default => "" #p is product category, s is shop category
      t.boolean :enabled, :default => false # category is not enabled when it is first created
      t.timestamps
    end


  end


  def self.down
    drop_table :shops
    drop_table :categories
  end
end
