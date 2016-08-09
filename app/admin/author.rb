ActiveAdmin.register Author do

active_admin_importable

sidebar :help do
	"Need help? Email us at admin@example.com"
	end

sidebar :help do 
	ul do
		li "Second List First Item"
		li "Second List Second Item"
		end
	end


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
index do
	selectable_column
	column "Title" do |post|
		link_to "view" #, books_index_path(post)
	end
	column :first_name
	column :last_name
end

config.comments = false
end
