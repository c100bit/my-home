module Mutations
  class ValidateVote < BaseMutation
    argument :address, String, required: true
    argument :contract_poll_id, String, required: true

    type Integer

    def resolve(params)
      Blockchain.new.validate_vote(params)
    end
  end
end
