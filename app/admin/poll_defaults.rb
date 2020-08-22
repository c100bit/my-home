ActiveAdmin.register Poll::Default do
  menu priority: 4
  permit_params :starts_at, :ends_at, :image, :text, :title

  index do
    selectable_column

    column :title
    column :starts_at
    column :ends_at
    column :count_votes
    column :count_positive
    column :count_negative
    column :text
    column :image do |i|
      image_tag url_for(i.image), width: 50
    end
    column :created_at
    actions
  end

  filter :starts_at
  filter :ends_at
end
