ActiveAdmin.register Book do

permit_params :author_id,:genre_id,:name,:price
index do
	column :name
	column :author
	column :genre
	column :price do |product|
		number_to_currency product.price
	end
	actions
end	

filter :name
filter :author, :as => :check_boxes
filter :genre,	:as => :check_boxes
filter :price
#filter :created_at
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params , :as => :check_boxesdo
#   permitted = [:permitted, :attribu,	:as => :check_boxestes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
# #  permitted
# end


end
