class PagesController < ApplicationController

  def index
    @page = Page.find_by_slug('index')
  end

  def show

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
end
