class ImageFile < ActiveRecord::Base
  validates :file, presence: true
end
