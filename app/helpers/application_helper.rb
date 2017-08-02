module ApplicationHelper
	def url_for_menu_item menu_item
		if menu_item.url.match /:\/\/ /
			menu_item.url
		else
			root_path + menu_item.url
		end

	end
end
