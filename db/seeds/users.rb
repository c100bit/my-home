module Seeds
  module Users
    def self.create!
      User.create!(email: 'participant@test.local',
                   user_name: 'Петров Иван Петрович',
                   user_passport: '5500 050505',
                   individual: true,
                   cadastral_number: '50:58:0100101:21',
                   phone: '9600000001',
                   address: 'Санкт-Петербург, ул. Тверская, 10',
                   role: :participant,
                   password: 'participant@test.local')

      User.create!(email: 'participant-company@test.local',
                   company_name: 'Магазин Весна',
                   company_form: :oao,
                   company_site: 'http://vesna.ru',
                   company_place: 'Санкт-Петербург, ул. Тверская, 12',
                   individual: false,
                   cadastral_number: '51:58:0100101:21',
                   phone: '9500000001',
                   address: 'Санкт-Петербург, ул. Тверская, 12',
                   role: :participant,
                   password: 'participant-company@test.local')

      User.create!(email: 'citizen@test.local',
                   user_name: 'Иванов Иван Иванович',
                   user_passport: '1500 050505',
                   individual: true,
                   cadastral_number: '51:58:0100101:21',
                   phone: '89600000001',
                   address: 'Санкт-Петербург, ул. Тверская, 11',
                   role: :citizen,
                   password: 'citizen@test.local')

      User.create!(email: 'gji@test.local',
                   company_name: 'Государственная жилищная инспекция',
                   company_form: :ooo,
                   company_site: 'http://site.ru',
                   individual: false,
                   phone: '22-222-22',
                   address: 'Москва, ул. Тверская, 10',
                   role: :gji,
                   password: 'gji@test.local')

      User.create!(email: 'mc@test.local',
                   company_name: 'Управляющая компания Чистый Двор',
                   company_form: :ooo,
                   company_site: 'http://site.ru',
                   individual: false,
                   phone: '33-33-33',
                   address: 'Санкт-Петербург, ул. Тверская, 11',
                   role: :mc,
                   password: 'mc@test.local')

      AdminUser.create!(email: 'admin@test.local',
                        password: 'admin@test.local',
                        password_confirmation: 'admin@test.local',
                        role: AdminUser::SUPER_ADMIN)
    end
  end
end
