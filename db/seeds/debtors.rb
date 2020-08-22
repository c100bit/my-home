# frozen_string_literal: true

module Seeds
  module Debtors
    extend Base

    def self.create!
      ::Debtor.create!(user: User::Client.first,
                       sum: 100)
      ::Debtor.create!(user: User::Client.last,
                       sum: 300)
    end
  end
end
