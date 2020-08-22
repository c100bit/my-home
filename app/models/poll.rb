class Poll < ApplicationRecord
  include ImageHelper

  has_many :votes
  has_many :users, through: :votes

  def count_votes
    votes.count
  end

  def count_positive
    votes.positive.count
  end

  def count_negative
    votes.negative.count
  end

  def result
    count_positive - count_negative
  end
end

# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  ends_at    :datetime
#  starts_at  :datetime
#  text       :text
#  title      :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
