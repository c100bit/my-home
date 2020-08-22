FactoryBot.define do
  factory :payment do
    user { nil }
    sum { 1.5 }
  end
end

# == Schema Information
#
# Table name: payments
#
#  id         :bigint           not null, primary key
#  sum        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_payments_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
