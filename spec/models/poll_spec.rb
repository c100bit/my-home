require 'rails_helper'

RSpec.describe Poll, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  ends_at    :datetime
#  starts_at  :datetime
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#