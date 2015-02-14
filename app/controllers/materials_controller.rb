class MaterialsController < ApplicationController

	def index
		@materials = Material.all
	end

	def show
		# is this how you are suppose to use this?? the find(params[:id]) stuff
		@material = Material.find(params[:id])
		@words = Word.all
	end

	def korean
		@materials = Material.all
	end
end
