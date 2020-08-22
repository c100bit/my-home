# frozen_string_literal: true

module Seeds
  module News
    extend Base

    def self.create!
      ::News.create!(title: 'Отключение электричества',
                     description: 'В связи с плановыми работами с 23-00 до 00-00')

      ::News.create!(title: 'Отключение отопления ',
                     description: 'В связи с плановыми работами с 23-00 до 00-00')

      p = Poll::Meeting.create!(starts_at: Time.current,
                                title: 'Первое собрание собственников',
                                text: 'Описание собрания',

                                ends_at: Time.current + 5.days)

      p.votes.create!(user: User::Client.first, supports: true)
      p.votes.create!(user: User::Client.second, supports: true)
      p.votes.create!(user: User::Client.last, supports: false)

      Poll::Default.create!(starts_at: Time.current,
                            title: 'Первый опрос',
                            text: 'Описание первого опроса',
                            ends_at: Time.current + 5.days)
    end
  end
end
