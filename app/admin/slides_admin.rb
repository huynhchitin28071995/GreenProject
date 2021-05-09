Trestle.resource(:slides) do
  menu do
    item :slides, icon: "fa fa-star"
  end

  active_storage_fields do
    [:image]
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :image ,header: false do |slide|
      content_tag :div, class: 'admin-image' do
        content_tag(:div, nil, class: 'thumbnail lozad', 'data-background-image': slide.thumbnail, src: preload_image)
      end.html_safe
    end
    column :description
    column :created_at, align: :center
    column :updated_at
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog:true do |slide|
    active_storage_field :image
    I18n.available_locales.each do |locale|
      tab t("admin.#{locale}") do
        text_area "description_#{locale}".to_sym, label: 'Descriptions', placeholder: 'Input your description here', class: "admin-slide-description"
      end
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:slide).permit(:name, ...)
  # end
end
