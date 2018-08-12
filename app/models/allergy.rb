class Allergy < ApplicationRecord
  include(Moderated)

  has_and_belongs_to_many(:menu_items)
  has_and_belongs_to_many(:recipes)

  validates_presence_of(:name)
  validates_uniqueness_of(:name)
end
