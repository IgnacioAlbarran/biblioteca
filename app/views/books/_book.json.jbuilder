json.extract! book, :id, :title, :author_id, :description, :year, :available, :section, :shelf, :order, :created_at, :updated_at
json.url book_url(book, format: :json)
