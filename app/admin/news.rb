ActiveAdmin.register News do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :title
  filter :description
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :image, as: :file
    end

    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :image do |ad|
        image_tag url_for(ad.image)
      end
    end
  end
end
