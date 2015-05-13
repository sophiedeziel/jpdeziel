class DocumentsController < ApplicationController
  def show
    @document = Document.find_by_slug(params[:id])
  end
end
