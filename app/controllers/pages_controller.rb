class PagesController < ApplicationController
  before_filter :register_presenters

  def index
    @page = Page.find_by_slug('index')
  end

  def show
    @page = Page.find_by_slug(params[:id])
  end

  def edit
  end

  def update
  end

  def create
  end

  def new
  end

  def destroy
  end

  private

  def register_presenters
    Shortcode.register_presenter(PreventionListPresenter)
    Shortcode.register_presenter(DocumentsPresenter)
    Shortcode.register_presenter(EmployeePresenter)
  end
end
