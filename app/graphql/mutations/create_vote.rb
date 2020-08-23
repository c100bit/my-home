module Mutations
  class CreateVote < BaseMutation
    argument :poll_id, ID, required: true
    argument :supports, Boolean, required: true

    type Types::PollType

    def resolve(params)
      poll = Poll.find(params[:poll_id])
      Vote.create(poll: poll, user: current_user, supports: params[:supports])
      poll
    end
  end
end
