Trestle.resource(:products, model: Product) do
  menu do
    item :products, icon: 'fa fa-star'
  end

  active_storage_fields do
    [:image]
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :description
    column :image do |product_img|
      content_tag :div, class: 'admin-table-image' do
        content_tag(:div, nil, class: 'thumbnail lozad', 'data-background-image': product_img.thumbnail,
                               src: preload_image)
      end.html_safe
    end
    column :price
    column :manufacturer
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |_product|
    text_field :name
    active_storage_field :image
    text_field :price
    text_field :description
    # select  :manufacturer, Manufacturer.all.map{|item| [item.name.humanize, item.id]}
    select :manufacturer_id, Manufacturer.all.map { |item| [item.name.humanize, item.id] }
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:product).permit(:name, ...)
  # end
end
