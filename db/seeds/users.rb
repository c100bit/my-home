module Seeds
  module Users
    def self.create!
      User::Client.create!(email: 'participant@test.local',
                           name: 'Петров Иван Петрович',
                           client_passport: '5500 050505',
                           individual: true,
                           cadastral_number: '50:58:0100101:21',
                           phone: '9600000001',
                           address: 'Санкт-Петербург, ул. Тверская, 10',
                           role: :participant,
                           flat: '10',
                           house: House.first,
                           password: 'participant@test.local')

      User::Client.create!(email: 'participant-company@test.local',
                           name: 'Магазин Весна',
                           company_form: :oao,
                           company_site: 'http://vesna.ru',
                           company_place: 'Санкт-Петербург, ул. Тверская, 12',
                           flat: '1',
                           individual: false,
                           cadastral_number: '51:58:0100101:21',
                           phone: '9500000001',
                           address: 'Санкт-Петербург, ул. Тверская, 12',
                           role: :participant,
                           house: House.first,
                           password: 'participant-company@test.local')

      User::Client.create!(email: 'citizen@test.local',
                           name: 'Иванов Иван Иванович',
                           client_passport: '1500 050505',
                           individual: true,
                           cadastral_number: '51:58:0100101:21',
                           phone: '89600000001',
                           address: 'Санкт-Петербург, ул. Тверская, 11',
                           flat: '3',
                           role: :citizen,
                           house: House.last,
                           password: 'citizen@test.local')

      User::Worker.create!(email: 'gji@test.local',
                           name: 'Государственная жилищная инспекция',
                           company_form: :gu,
                           company_site: 'http://site.ru',
                           individual: false,
                           phone: '22-222-22',
                           address: 'Москва, ул. Тверская, 10',
                           role: :gji,
                           password: 'gji@test.local')

      AdminUser.create!(email: 'admin@test.local',
                        password: 'admin@test.local',
                        password_confirmation: 'admin@test.local',
                        role: AdminUser::SUPER_ADMIN)
    end
  end
end
