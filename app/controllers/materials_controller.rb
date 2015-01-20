class MaterialsController < ApplicationController

	def show
		@material = Material.second
	end

	def list
		@materials = Material.all
	end
end
