# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Fantasy
# Sci-Fi
# Mystery
# Thriller
# Romance
# Westerns
# Dystopian
# Contemporary
#Tags
t1 = Tag.create(name: 'Fantasy')
t2 = Tag.create(name: 'Sci-Fi')
Tag.create(name: 'Mystery')
Tag.create(name: 'Thriller')
Tag.create(name: 'Romance')
Tag.create(name: 'Westerns')
Tag.create(name: 'Dystopian')
Tag.create(name: 'Contemporary')

#Books
b1 = Book.create(title: 'Love Side', description: 'xyz', price: 10.5 )
b2 = Book.create(title: 'Dark Story', description: 'xyz', price: 14.5 )
Book.create(title: 'Adventure Club', description: 'xyz', price: 12.00 )
Book.create(title: 'Visit To Italy', description: 'xyz', price: 17.00 )
Book.create(title: 'Love at First Sight', description: 'xyz', price: 170.00 )
Book.create(title: 'I.Z.U', description: 'xyz', price: 17.00 )
Book.create(title: 'Royals..', description: 'xyz', price: 17.00 )

BookTag.create(book_id: b1, tag_id: t1)
BookTag.create(book_id: b1, tag_id: t2)
BookTag.create(book_id: b2, tag_id: t1)