class Subscription < ApplicationRecord
  belongs_to :user

  # В Rails 7+:
  enum :status, { pending: 0, success: 1 }

  # Если используете Rails 6 или старше:
  # enum status: { pending: 0, success: 1 }
end