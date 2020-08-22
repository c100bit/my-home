module Seeds
  module Users
    def self.create!
      User.create!(email: 'user@test.local',
                   uid: 'user@test.local',
                   first_name: 'user@test.local',
                   last_name: 'Петрова',
                   phone: '9600000001',
                   address: 'Санкт-Петербург, ул. Тверская, 10',
                   middle_name: 'Ивановна',
                   password: 'user@test.local',
                   password_confirmation: 'user@test.local')

      AdminUser.create!(email: 'admin@test.local',
                        password: 'admin@test.local',
                        password_confirmation: 'admin@test.local',
                        role: AdminUser::SUPER_ADMIN)
    end
  end
end
