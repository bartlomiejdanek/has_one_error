class Supplier < ActiveRecord::Base
  has_one :info, class_name: Supplier::Info
  accepts_nested_attributes_for :info
  attr_accessible :info_attributes
end
