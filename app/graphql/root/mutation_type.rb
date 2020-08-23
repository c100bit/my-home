# frozen_string_literal: true

module Root
  class MutationType < Types::Base::Object
    field :createPoll, mutation: Mutations::CreatePoll,
                       description: 'Create poll'
    field :CreateVote, mutation: Mutations::CreateVote,
                       description: 'Create vote'
    field :ValidateVote, mutation: Mutations::ValidateVote,
                         description: 'Validate vote'
  end
end
