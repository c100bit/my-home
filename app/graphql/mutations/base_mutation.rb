# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::Mutation

    argument_class Types::Base::Argument
    field_class Types::Base::Field
    object_class Types::Base::Object

    field :errors, [String], null: false

  end
end
