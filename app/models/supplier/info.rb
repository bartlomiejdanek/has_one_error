class Supplier::Info < ActiveRecord::Base
  attr_accessible :supplier_id, :data
  belongs_to :supplier
end
