ActiveAdmin.register User::Client do
  menu priority: 2
  permit_params :email, :password, :password_confirmation,
                :name, :phone, :individual, :address, :cadastral_number, :role, :flat

  index do
    selectable_column
    column :name
    column :phone
    column :address
    column :flat
    column :email
    column :individual
    column :cadastral_number
    column :role
    column :house do |h|
      link_to h.house.address, admin_house_path(h.house)
    end
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :name
      row :individual
      row :phone
      row :address
      row :flat
      row :email
      row :cadastral_number
      row :role
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  filter :email
  filter :name
  filter :individual
  filter :cadastral_number
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation

      f.input :name
      f.input :individual
      f.input :cadastral_number
      f.input :phone
      f.input :address
      f.input :flat
      f.input :role
    end
    f.actions
  end
end
