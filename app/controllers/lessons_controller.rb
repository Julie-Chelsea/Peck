class LessonsController < ApplicationController
	def index
		@lessons = Lesson.all
	end

	def show
		@lesson = lesson = Lesson.find(params[:id])
		@words = lesson.words.where(:lesson_id => lesson)
		@slides = lesson.slides.all
	end
end
