# product = Product.new(
#                         name: "CocaCola",
#                         price: 2,
#                         image: "http://www.dolciariapegorintullio.it/catalogo/bibite/SBEBBC2.jpg", 
#                         description: "2 liter"
#                         )
# product.save

# product = Product.new(
#                         name: "Pepsi",
#                         price: 1,
#                         image: "http://blog.calendars.com/wp-content/uploads/2012/08/pepsi.jpg",
#                         description: "12 oz"
#                         )
# product.save

# product = Product.new(
#                         name: "Orange Crush",
#                         price: 2,
#                         image: "https://happyspeedy.com/sites/default/files/oj-crush-soda-20-oz-b1121112.jpg",
#                         description: "20 oz"
#                         )
# product.save

# product = Product.new(
#                         name: "Squirt",
#                         price: 1,
#                         image: "http://www.heb.com.mx/media/catalog/product/cache/20/small_image/210x/b2a865775a4e724e254f49c6130e003e/s/q/squirt-refresco-toronja-2.5-lt_x1.jpg",
#                         description: "20 oz"
#                         )
# product.save


Supplier.create(name: "Bob's Big Nerd Emplorium", email: "bibbob@empire.com", phone: "801-555-9878")
Supplier.create(name: "Collections and stuff", email: "susan@gmail.com", phone: "310-555-9999")
Supplier.create(name: "Rick's van behind Wendy's", email: "rickt231@yahoo.com", phone: "212-555-9899")

Category.create!(name: "Small item")
Category.create!(name: "Large item")


CategoryProduct.create!(product_id: 2, category_id: 2)
CategoryProduct.create!(product_id: 8, category_id: 1)
CategoryProduct.create!(product_id: 4, category_id: 2)
CategoryProduct.create!(product_id: 3, category_id: 1)
CategoryProduct.create!(product_id: 5, category_id: 1)