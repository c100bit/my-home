class User
  class Client < User
    after_create :create_blockchain_account

    belongs_to :house
    has_many :payments
    has_many :votes

    private

    def create_blockchain_account
      address, private_key_hex = Blockchain.new_account
      update_attributes(blockchain_address: address, blockchain_key: private_key_hex)
    end
  end
end

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string
#  allow_password_change  :boolean          default(FALSE)
#  blockchain_address     :string
#  blockchain_key         :string
#  cadastral_number       :string
#  client_passport        :string
#  company_form           :integer
#  company_place          :string
#  company_site           :string
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  email                  :string
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  flat                   :string
#  individual             :boolean          default(FALSE)
#  locked_at              :datetime
#  name                   :string
#  phone                  :string
#  provider               :string           default("email"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer
#  tokens                 :json
#  type                   :string           not null
#  uid                    :string           default(""), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  house_id               :bigint
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_house_id              (house_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (house_id => houses.id)
#
