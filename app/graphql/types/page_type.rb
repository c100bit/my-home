# frozen_string_literal: true

module Types
  class PageType < Base::Object

    field :id, ID, null: false
    field :name, String, null: false
    field :title, String, null: false
    field :text, String, null: false

  end
end
