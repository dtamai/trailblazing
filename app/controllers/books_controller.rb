class BooksController < ApplicationController
  def create
    form = BookForm.new(book: book, author: book.build_author)

    if form.validate(params[:book])
      if form.save
        render json: form.model[:book]
      else
        head 422
      end
    else
      head 400
    end
  end

  def destroy
  end

  private

  def book
    @book ||= Book.new
  end
end
