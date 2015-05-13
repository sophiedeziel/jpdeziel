class Radiograph < ActiveRecord::Base
  belongs_to :prevention_category
  validates :age, :image, presence: true
end
