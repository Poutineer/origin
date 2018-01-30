class Product < ApplicationRecord
  has_many :cart_items
  has_many :product_visibility_state_transitions

  friendly_id :name, use: [:slugged, :history], slug_column: :slug

  monetize :price_cents

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  validates_presence_of :price_cents
  validates_presence_of :price_currency
  validates_presence_of :metadata
  validates_presence_of :slug
  validates_presence_of :visibility_state
  validates_presence_of :checksum

  before_validations :generate_checksum

  private def generate_checksum
    assign_attributes(checksum: metadata.hash)
  end
end