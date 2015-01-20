class MaterialsController < ApplicationController

	def show
		@material = Material.first
	end
end
