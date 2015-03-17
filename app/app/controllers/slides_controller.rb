class SlidesController < ApplicationController
	def index
		@slides = Slide.all
	end

	def show
		@slide = Slide.find(params[:id])
		@slides = Slide.all
		if @slide.id > 1
			@previous = Slide.where("id < ?", params[:id]).order(:id).first
		end
		if @slide.id < Slide.all.size
			@next = Slide.where("id > ?", params[:id]).order(:id).first
		end
	end

end
