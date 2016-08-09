ActiveAdmin.register Genre do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
scope :all

#config.paginate = false

menu label: "My gener"

index pagination_total: false   do
	id_column
	column :name
	actions
end

#index download_links: false

#  index download_links: false
#  index download_links: [:pdf]
#  index download_links: proc{ current_user.can_view_download_links? }


index as: :grid do |name|
	link_to image_tag(name.name)
end

end
