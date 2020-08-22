ActiveAdmin.register Debtor do
  permit_params :user, :sum

  index do
    selectable_column
    column :user
    column :flat
    column :house
    column :sum

    column :created_at
    column :updated_at
    actions
  end

  filter :user
  filter :house
  filter :sum
end
