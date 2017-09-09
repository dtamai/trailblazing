require "reform/form/validation/unique_validator"

class BookForm < Reform::Form
  include Composition

  model :book

  property :author_name, on: :author, from: :name
  property :title, on: :book

  validates :title, presence: true, unique: true
  validates :author_name, presence: true
end
