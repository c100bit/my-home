module Types
  class UserType < Base::Object

    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :middle_name, String, null: true
    field :email, String, null: false
    field :phone, String, null: false
    field :address, String, null: false

    field :notices, [NoticeType], null: false

  end
end
