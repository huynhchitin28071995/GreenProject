Trestle.resource(:profiles) do
  menu do
    item :profiles, icon: "fa fa-star"
  end

  active_storage_fields do
    [:avatar]
  end

  # Customize the table columns shown on the index view.
  
  table do
    column :avatar do |avt|
      content_tag :div, class: 'admin-table-image' do
        content_tag(:div, nil, class: 'thumbnail lozad', 'data-background-image': avt.thumbnail,
                               src: preload_image)
      end.html_safe
    end
    column :user
    column :address
    column :first_name
    column :last_name
    column :phone
    column :dob
    column :sex
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |profile|
    text_field :first_name
    text_field :last_name
    text_field :address
    text_field :phone
    active_storage_field :avatar
    date_field :dob
    select :sex, Profile::sexes.keys
    select :user_id, User.all.map { |user| [user.email.humanize, user.id]}
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:profiles_admin).permit(:name, ...)
  # end
end
