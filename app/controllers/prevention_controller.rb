class PreventionController < ApplicationController
  def show
    @category = PreventionCategory.find_by_slug(params[:id])
  end
end
