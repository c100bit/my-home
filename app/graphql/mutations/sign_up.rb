module Mutations
  class SignUp < BaseMutation

    argument :email,                 String, required: true
    argument :password,              String, required: true
    argument :password_confirmation, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :phone, String, required: true
    argument :address, String, required: true
    argument :middle_name, String, required: false

    type Types::UserType

    def resolve(args)
      user = User.new(args)
      if user.save
        user
      else
        fail GraphQL::ExecutionError, user.errors.full_messages.join(', ')
      end
    end

  end
end
