Dir[Rails.root.join('db/seeds/*.rb')].sort.each { |file| require file }

Seeds::Users.create!
Seeds::Houses.create!
Seeds::News.create!
Seeds::Pages.create!
Seeds::Comments.create!
