module Types
  class VoteType < Types::Base::Object
    field :id, ID, null: false
    field :supports, Boolean, null: false

    field :users, [Types::UserType]
  end
end
