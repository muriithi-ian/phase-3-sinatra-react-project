puts "🌱 Seeding data..."

puts "Creating Books..."

Book1 = Book.create(title:"If Tomorrow Comes", author: "Sidney Sheldon", description: "Tracy comes up with an audacious plan to revenge", category_id: 1 )
Book2 = Book.create(title:"The Alchemist", author: "Paulo Coehlo", description: "Inspiring Tale of Self Discovery", category_id: 2 )
Book3 = Book.create(title:"We Need More Wine", author: "Gabrielle Union", description: "The life Story of a Young Actress", category_id: 3 )
Book4 = Book.create(title:"Half Of A Yellow Son", author: "Chimamanda Ngozi", description: "The Story Of The Biafran War", category_id: 4 )
Book5 = Book.create(title:"Things Fall Apart", author: "Chinua Achebe", description: "Pre-Colonial Life", category_id: 5 )

puts "Creating Categories..."
Category1 = Category.create(name:"Crime")
Category2 = Category.create(name:"Adventure Fiction")
Category3 = Category.create(name:"Biography")
Category4 = Category.create(name:"Political Fiction")
Category5 = Category.create(name:"Historical")

puts "Creating Members..."

Member1 = Member.create(name: "Mildred", is_librarian: 0)
Member2 = Member.create(name: "Mark", is_librarian: 0)
Member3 = Member.create(name: "Kelly", is_librarian: 1)
Member4 = Member.create(name: "Elvis", is_librarian: 1)
Member5 = Member.create(name: "Hannah", is_librarian: 0)















puts "✅ Done seeding!"
