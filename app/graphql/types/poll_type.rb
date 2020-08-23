module Types
  class PollType < Types::Base::Object
    field :id, ID, null: false
    field :title, String, null: false
    field :starts_at, String, null: false
    field :ends_at, Integer, null: false
    field :count_votes, Integer, null: false
    field :count_positive, Integer, null: false
    field :count_negative, Integer, null: false
    field :contract_poll_id, Integer, null: false

    field :votes, [Types::VoteType]
  end
end
