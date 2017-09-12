class BookshelvesController < ApplicationController
  def create
    bookshelf = BookshelfForm.new bookshelf_params

    if bookshelf.save
      head 200
    else
      head 400
    end
  end

  def bookshelf_params
    params.permit(books: [:title, :author_name])
  end
end
