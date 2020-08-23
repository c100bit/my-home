module Types
  class UserType < Base::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :cadastral_number, String, null: false
    field :email, String, null: false
    field :phone, String, null: false
    field :address, String, null: false

    field :notices, [NoticeType], null: false
  end
end
