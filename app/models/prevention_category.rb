class PreventionCategory < ActiveRecord::Base
  has_many :radiographs
  validates :name, :description, :slug, presence: true
end
