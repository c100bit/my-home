# == Schema Information
#
# Table name: news
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class News < ApplicationRecord

  include ImageHelper

  validates :title, presence: true
  validates :description, presence: true

end
