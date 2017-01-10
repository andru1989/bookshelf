class BookRepository < Hanami::Repository
  def most_recent_by_author(author, limit: 8)
    books
      .where(authod: author)
      .order(:created_at)
      .limit(limit)
  end
end
