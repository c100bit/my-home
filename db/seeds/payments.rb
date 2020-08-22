# frozen_string_literal: true

module Seeds
  module Payments
    extend Base

    def self.create!
      ::Payment.create!(user: User::Client.first,
                        sum: 100)
      ::Payment.create!(user: User::Client.last,
                        sum: 300)
    end
  end
end
