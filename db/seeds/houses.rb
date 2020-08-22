module Seeds
  module Houses
    def self.create!
      House.create!(
        kind: :p20,
        uk: User.where(role: :mc).first,
        address: 'Санкт-Петербург, ул. Тверская, 12',
        entrance_count: 3,
        total_area: 1000,
        common_area: 100,
        budjet: 1_000_000,
        admin: User.where(role: :participant).first
      )

      House.create!(
        kind: :p20,
        uk: User.where(role: :mc).first,
        address: 'Санкт-Петербург, ул. Тверская, 11',
        entrance_count: 5,
        total_area: 1000,
        common_area: 100,
        budjet: 1_000_000,
        admin: User.where(role: :participant).last
      )
    end
  end
end
