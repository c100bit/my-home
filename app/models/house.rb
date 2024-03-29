class House < ApplicationRecord
  enum kind: %i[p20 ii49 i155]
  belongs_to :uk, class_name: 'User', optional: true
  belongs_to :admin, class_name: 'User', optional: true

  has_many :users, class_name: 'User::Client'

  def count_users
    users.count
  end
end

# == Schema Information
#
# Table name: houses
#
#  id             :bigint           not null, primary key
#  address        :string
#  balance        :float
#  common_area    :float
#  credit         :float
#  debit          :float
#  entrance_count :integer
#  kind           :integer
#  total_area     :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  admin_id       :bigint
#  uk_id          :bigint
#
# Indexes
#
#  index_houses_on_admin_id  (admin_id)
#  index_houses_on_uk_id     (uk_id)
#
# Foreign Keys
#
#  fk_rails_...  (admin_id => users.id)
#  fk_rails_...  (uk_id => users.id)
#
