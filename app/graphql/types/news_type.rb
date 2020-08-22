# frozen_string_literal: true

module Types
  class NewsType < Base::Object

    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :image_url, String, null: false
    field :created_at, String, null: false

  end
end
