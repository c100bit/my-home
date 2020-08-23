module Mutations
  class CreatePoll < BaseMutation
    argument :title, String, required: true
    argument :text, String, required: true
    argument :starts_at, String, required: true
    argument :ends_at, String, required: true

    type Types::PollType

    def resolve(params)
      Poll.create(params)
    end
  end
end
