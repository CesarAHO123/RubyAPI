# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_cat=Category.create(
    {
        name: "Electronicos",
        description: "Articulos electronicos",
    }  
    
)
second_cat=Category.create(
    {
        name: "Computadoras",
        description: "Computadoras"
    }
)
#test=Product.new(
#    {
#        name:"Television Sony",
#        description: "Television de 30 pulgadas marca Sony",
#        category_id: first_cat.id
#    }
#)
#test.save