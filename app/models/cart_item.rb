class CartItem < ApplicationRecord
  include AuditedTransitions

  belongs_to :cart
  belongs_to :account
  belongs_to :product

  monetize :price_cents
  monetize :discount_cents

  state_machine :purchase_state, initial: :pending do
    event :purchase do
      transition :pending => :purchased
    end

    event :returned do
      transition :purchased => :returned
    end

    before_transition do: :version_transition
  end
end
