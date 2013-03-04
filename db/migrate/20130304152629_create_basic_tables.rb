class CreateBasicTables < ActiveRecord::Migration
  def up
    create_table "supplier_infos", :force => true do |t|
      t.integer  "supplier_id", :null => false
      t.string   "data"
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
    end

    create_table "suppliers", :force => true do |t|
      t.string   "company_name",       :default => "",         :null => false
    end
  end

  def down
    drop_table "supplier_infos"
    drop_table "suppliers"
  end
end
