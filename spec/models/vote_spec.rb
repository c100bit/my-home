require 'rails_helper'

RSpec.describe Vote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: votes
#
#  id         :bigint           not null, primary key
#  supports   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_votes_on_poll_id  (poll_id)
#  index_votes_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (poll_id => polls.id)
#  fk_rails_...  (user_id => users.id)
#
