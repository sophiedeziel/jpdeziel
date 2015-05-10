class Property < ActiveRecord::Base
  validates :name, :value, presence: true
end
