class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
  end

  def new
  end

  def create
    library = Library.create(
      name: params[:name],
      floor_count: params[:floor_count],
      book_count: params[:book_count]
    )
    redirect_to libraries_path
  end

end
