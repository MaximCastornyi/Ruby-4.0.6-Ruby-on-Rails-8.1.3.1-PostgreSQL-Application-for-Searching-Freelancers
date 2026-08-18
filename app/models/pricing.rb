class Pricing < ApplicationRecord
  belongs_to :gig

  enum :pricing_type, {
    basic: 0,
    standard: 1,
    premium: 2
  }
end
