ActiveAdmin.register Debtor do
  menu priority: 1
  permit_params :user, :sum

  index do
    selectable_column
    column :user
    column :flat
    column :house do |h|
      link_to h.house.address, admin_house_path(h.house)
    end
    column :sum

    column :created_at
    column :updated_at
    actions
  end

  filter :user
  filter :house
  filter :sum
end
