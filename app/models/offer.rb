class Offer < ApplicationRecord
  belongs_to :request
  belongs_to :user
  enum :status, {
    pending: 0,
    accepted: 1,
    rejected: 2
  }

  validates :amount, :days,
              numericality: {
                only_integer: true,
                message: "must be a number"
              }
end
