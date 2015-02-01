class MaterialsController < ApplicationController

	def index
		@material = Material.all
	end

	def show
		@material = Material.second
	end

	def korean
		@materials = Material.all
	end
end
