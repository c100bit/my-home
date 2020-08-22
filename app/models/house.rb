class House < ApplicationRecord
  enum kind: %i[p20 ii49 i155]
  belongs_to :uk, class_name: 'User'
  belongs_to :admin, class_name: 'User'
end

# == Schema Information
#
# Table name: houses
#
#  id             :bigint           not null, primary key
#  address        :string
#  budjet         :float
#  common_area    :float
#  entrance_count :integer
#  kind           :integer
#  title          :string
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
