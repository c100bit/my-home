class Poll
  class Meeting < Poll
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
