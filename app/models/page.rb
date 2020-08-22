# == Schema Information
#
# Table name: pages
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  text       :text             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Page < ApplicationRecord

  validates :name, presence: true
  validates :title, presence: true
  validates :text, presence: true

end
