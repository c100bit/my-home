module Types
  class NoticeType < Base::Object

    field :id, ID, null: false
    field :title, String, null: false

  end
end
