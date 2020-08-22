ActiveAdmin.register House do
  permit_params :address, :budjet, :common_area, :entrance_count, :kind, :title, :total_area, :admin_id, :uk_id

  index do
    selectable_column
    column :address
    column :kind
    column :total_area
    column :common_area
    column :budjet
    column :admin
    column :uk

    column :created_at
    column :updated_at
    actions
  end
end
