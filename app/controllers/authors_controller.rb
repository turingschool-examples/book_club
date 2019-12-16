class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]
  def show
    @average_pages = @author.books.average(:pages)
  end

  private
    def set_author
      @author = Author.find_by(id: params[:id])
    end
end