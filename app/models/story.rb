class Story < ActiveRecord::Base
	has_many :users, through: :user_stories
	has_many :user_stories

	def link_thumbnail(url)
		http = Net::HTTP.new("localhost", 3000)
		http.read_timeout = 500
		begin
	    	link_data = LinkThumbnailer.generate(url)
	    	link_data
		rescue Timeout::Error
		end
  	end
end
