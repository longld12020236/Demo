module ApplicationHelper
	#returns full title"
	def full_title(page_title = '')
		base_title = "Long's Blog"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

end
