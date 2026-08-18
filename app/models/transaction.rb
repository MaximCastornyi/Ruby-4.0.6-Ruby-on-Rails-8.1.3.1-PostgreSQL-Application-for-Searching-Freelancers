class Transaction < ApplicationRecord
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :seller, class_name: "User", optional: true
  belongs_to :gig, optional: true
  belongs_to :request, optional: true

  enum :status, {
    approved: 0,
    pending: 1,
    rejected: 2
  }

  enum :transaction_type, {
    trans: 0,
    withdraw: 1
  }

  enum :source_type, {
    system: 0,
    stripe: 1
  }

end