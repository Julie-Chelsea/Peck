class Slide < ActiveRecord::Base
	self.abstract_class = true
	establish_connection :development
	self.table_name = "lessons_slide"

	belongs_to :lessons
end
