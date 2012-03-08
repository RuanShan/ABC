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
  end

  def self.down
    drop_table :shops
  end
end
