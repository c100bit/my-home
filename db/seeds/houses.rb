module Seeds
  module Houses
    def self.create!
      User::Worker.create!(email: 'mc@test.local',
                           name: 'Управляющая компания Чистый Двор',
                           company_form: :ooo,
                           company_site: 'http://site.ru',
                           individual: false,
                           phone: '33-33-33',
                           address: 'Санкт-Петербург, ул. Тверская, 11',
                           role: :mc,
                           password: 'mc@test.local')

      House.create!(
        kind: :p20,
        uk: User.where(role: :mc).first,
        address: 'Санкт-Петербург, ул. Тверская, 12',
        entrance_count: 3,
        total_area: 1000,
        common_area: 100,
        balance: 1_000_000,
        debit: 1_500_000,
        credit: 500_000
      )

      House.create!(
        kind: :p20,
        uk: User.where(role: :mc).first,
        address: 'Санкт-Петербург, ул. Тверская, 11',
        entrance_count: 5,
        total_area: 1000,
        common_area: 100,
        balance: 1_000_000,
        debit: 1_500_000,
        credit: 500_000
      )
    end
  end
end
