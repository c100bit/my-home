class Debtor < ApplicationRecord
  belongs_to :user, class_name: 'User::Client'
  has_one :house, through: :user

  def flat
    user.flat
  end
end

# == Schema Information
#
# Table name: debtors
#
#  id         :bigint           not null, primary key
#  sum        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_debtors_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
