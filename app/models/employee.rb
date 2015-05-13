class Employee < ActiveRecord::Base
  validates :name, :title, :bio, :image, presence: true
end
