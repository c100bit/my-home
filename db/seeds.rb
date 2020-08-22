Dir[Rails.root.join('db/seeds/*.rb')].sort.each { |file| require file }
Seeds::Houses.create!
Seeds::Users.create!

Seeds::Debtors.create!
Seeds::Payments.create!

Seeds::News.create!
Seeds::Pages.create!
Seeds::Comments.create!

House.first.update(admin: User.where(role: :participant).first)
House.last.update(admin: User.where(role: :participant).last)
