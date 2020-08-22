# frozen_string_literal: true

module Seeds
  module Comments
    def self.create!
      ActiveAdmin::Comment.create!(namespace: 'admin',
                                   body: 'Комментарий администратора',
                                   resource_type: 'Page',
                                   resource_id: Page.last.id,
                                   author_type: 'AdminUser',
                                   author_id: AdminUser.first.id)
    end
  end
end
