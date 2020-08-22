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
    end
  end
end
