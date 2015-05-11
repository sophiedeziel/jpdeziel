class PreventionCategory < ActiveRecord::Base
  validates :name, :description, :slug, presence: true
end
