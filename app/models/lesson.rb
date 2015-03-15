class Lesson < ActiveRecord::Base
	self.abstract_class = true
	establish_connection :development
	self.table_name = "lessons_lesson"

	has_many :slides
	has_many :words
end
