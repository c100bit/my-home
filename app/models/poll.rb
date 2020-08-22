class Poll < ApplicationRecord
  after_create :create_in_blockchain

  include ImageHelper

  has_many :votes
  has_many :users, through: :votes

  def count_votes
    votes.count
  end

  def count_positive
    votes.positive.count
  end

  def count_negative
    votes.negative.count
  end

  def result
    count_positive - count_negative
  end

  private

  def create_in_blockchain
    documents_hashes = IPFSClient.new.upload_documents(self)
    Blockchain.new.create_poll(id, text, starts_at, ends_at, documents_hashes, {})
  end
end

# == Schema Information
#
# Table name: polls
#
#  id               :bigint           not null, primary key
#  ends_at          :datetime
#  starts_at        :datetime
#  text             :text
#  title            :string
#  type             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  contract_poll_id :bigint
#
