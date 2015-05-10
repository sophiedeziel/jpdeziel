class Document < ActiveRecord::Base
  validates :name, :slug, presence: true
end
