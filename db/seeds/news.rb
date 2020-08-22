# frozen_string_literal: true

module Seeds
  module News
    extend Base

    def self.create!
      ::News.create!(title: 'Отключение электричества',
                     description: 'В связи с плановыми работами с 23-00 до 00-00',
                     image: upload_seed_file('news/item1.png'))

      ::News.create!(title: 'Отключение отопления ',
                     description: 'В связи с плановыми работами с 23-00 до 00-00',
                     image: upload_seed_file('news/item2.jpg'))

      Poll::Meeting.create!(starts_at: Time.current,
                            title: 'Первое собрание собственников',
                            text: 'Описание собрания',
                            image: upload_seed_file('news/letter.jpg'),

                            ends_at: Time.current + 5.days)
      Poll::Default.create!(starts_at: Time.current,
                            title: 'Первый опрос',
                            image: upload_seed_file('news/banner.jpg'),
                            text: 'Описание первого опроса',
                            ends_at: Time.current + 5.days)
    end
  end
end
