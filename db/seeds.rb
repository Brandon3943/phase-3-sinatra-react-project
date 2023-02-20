puts "🌱 Seeding spices..."

# Seed your database here
Customer.create(name: "Brandon")
Customer.create(name: "Holly")
Customer.create(name: "Angela")
Customer.create(name: "Darian")

Ticket.create(customer_id: Customer.first.id)
Ticket.create(customer_id: Customer.last.id)

TicketItem.create(ticket_id: 1, item_id: 1)
TicketItem.create(ticket_id: 2, item_id: 2)


Item.create(name: "Pepperoni", price: 3.50, inventory: 36, img_url: "https://www.shutterstock.com/image-photo/slice-fresh-italian-classic-original-pepperoni-337771802")
Item.create(name: "Meat Lovers", price: 4.50, inventory: 21, img_url: "https://www.shutterstock.com/image-photo/slice-fresh-italian-classic-original-pepperoni-337771802")
Item.create(name: "Veggie", price: 3.00, inventory: 16, img_url: "https://www.shutterstock.com/image-photo/slice-fresh-italian-classic-original-pepperoni-337771802")
Item.create(name: "Vegan", price: 5.50, inventory: 8, img_url: "https://www.shutterstock.com/image-photo/slice-fresh-italian-classic-original-pepperoni-337771802")
Item.create(name: "Cheese", price: 2.25, inventory: 43, img_url: "https://www.shutterstock.com/image-photo/slice-fresh-italian-classic-original-pepperoni-337771802")

puts "✅ Done seeding!"
