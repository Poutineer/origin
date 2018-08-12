class Establishment < ApplicationRecord
  include(FriendlyId)
  include(Moderated)

  has_many :menu_items, :dependent => :destroy
  has_and_belongs_to_many :payment_types

  Gutentag::ActiveRecord.(self)

  friendly_id :name, :use => [:slugged, :history]

  validates_presence_of :name
  validates_presence_of :slug
  validates_presence_of :google_places_id

  after_commit :google_places_backfill, :on => :create

  def photos
    google_place.fetch("photos", [])
  end

  def rating
    google_place.fetch("rating", 0.0)
  end

  def google_place
    super.with_indifferent_access
  end

  private def google_places_backfill
    GooglePlacesBackfillJob.perform_async(id) if google_place.blank?
  end

  private def allowed_to_publish?
    super && google_place.present?
  end
end
