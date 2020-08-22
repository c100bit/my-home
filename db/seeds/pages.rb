# frozen_string_literal: true

module Seeds
  module Pages
    def self.create!
      Page.create!(name: 'text_1',
                   title: 'Описание',
                   text: '<p>текст 1</p>')

      Page.create!(name: 'text_2',
                   title: 'Информация',
                   text: '<p>текст 2</p>')

      Page.create!(name: 'text_3',
                   title: 'Вопросы и ответы',
                   text: '<p>текст 3</p>')
    end
  end
end
