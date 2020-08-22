FactoryBot.define do
  factory :poll do
    text { "MyText" }
    starts_at { "2020-08-22 18:03:22" }
    ends_at { "2020-08-22 18:03:22" }
  end
end

# == Schema Information
#
# Table name: polls
#
#  id               :bigint           not null, primary key
#  ends_at          :datetime
#  starts_at        :datetime
#  text             :text
#  title            :string
#  type             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  contract_poll_id :bigint
#
