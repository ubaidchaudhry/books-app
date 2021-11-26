class BookMailer < ApplicationMailer
  def most_tagged
    @books = Book.joins(:tags).group("books.id").select("books.id, title, description, price, count(tags.id) as tag_count").order("tag_count desc").limit(3)
    mail(to:"xyz@gmail.com", subject: "Most Tagged Books!")
  end
end
