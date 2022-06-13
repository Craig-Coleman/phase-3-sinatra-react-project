puts "🌱 Seeding data..."

List.create(name: "List 1")
List.create(name: "List 2")
List.create(name: "My List")

Item.create(name: "Pepper", category: "condiment", price: 1, list_id: 1)
Item.create(name: "lettuce", category: "produce", price: 2, list_id: 1)
Item.create(name: "frozen waffles", category: "frozen", price: 3, list_id: 1)
Item.create(name: "ketchup", category: "condiment", price: 1.50, list_id: 1)

Item.create(name: "Pepper", category: "condiment", price: 1, list_id: 2)
Item.create(name: "lettuce", category: "produce", price: 2, list_id: 2)
Item.create(name: "frozen waffles", category: "frozen", price: 3, list_id: 2)
Item.create(name: "ketchup", category: "condiment", price: 1.50, list_id: 2)

Item.create(name: "Pepper", category: "condiment", price: 1, list_id: 3)
Item.create(name: "lettuce", category: "produce", price: 2, list_id: 3)
Item.create(name: "frozen waffles", category: "frozen", price: 3, list_id: 3)
Item.create(name: "ketchup", category: "condiment", price: 1.50, list_id: 3)

puts "✅ Done seeding!"
