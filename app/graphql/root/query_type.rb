# frozen_string_literal: true

module Root
  class QueryType < Types::Base::Object
    field :news_list, [Types::NewsType], null: false
    field :pages, [Types::PageType], null: false
    field :polls, [Types::PollType], null: false

    field :page, Types::PageType, null: false do
      argument :id, ID, required: true
    end

    field :news, Types::NewsType, null: false do
      argument :id, ID, required: true
    end

    field :user, Types::UserType, null: false

    field :poll, Types::PollType, null: false do
      argument :id, ID, required: true
    end

    def user
      context[:current_user]
    end

    def poll(id:)
      Poll.find(id)
    end

    def page(id:)
      Page.find(id)
    end

    def news(id:)
      News.find(id)
    end

    def polls
      Poll.all
    end

    def pages
      Page.all
    end

    def news_list
      News.all
    end
  end
end
