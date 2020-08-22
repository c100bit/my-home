ActiveAdmin.register House do
  menu priority: 3
  permit_params :address, :budjet, :common_area, :entrance_count, :kind, :title, :total_area, :admin_id, :uk_id

  index do
    selectable_column
    column :address
    column :kind
    column :total_area
    column :common_area
    column :debit
    column :credit
    column :balance
    column :count_users
    column :admin
    column :uk

    column :created_at
    actions
  end

  filter :admin
  filter :kind
  filter :address
  filter :total_area
  filter :common_area
  filter :budjet
  filter :created_at
end
