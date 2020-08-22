ActiveAdmin.register User::Worker do
  menu priority: 5
  permit_params :email, :password, :password_confirmation,
                :company_form, :phone, :name, :address, :company_site, :role

  index do
    selectable_column
    column :name
    column :company_form
    column :phone
    column :address
    column :email
    column :company_site
    column :role
    column :created_at
    actions
  end

  filter :email
  filter :name
  filter :company_form
  filter :created_at

  show do
    attributes_table do
      row :name
      row :company_form
      row :phone
      row :address
      row :email
      row :company_site
      row :role
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation

      f.input :name
      f.input :company_form
      f.input :company_site
      f.input :phone
      f.input :address
      f.input :role
    end
    f.actions
  end
end
