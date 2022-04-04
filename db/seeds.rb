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
        description: "Articulos electronicos"
    }
)
Product.create([
    {
        name:"Television Sony",
        description: "Television de 30 pulgadas marca Sony",
        category: first_cat
    },
    {
        name:"Monitor DELL",
        description:"Monitor de 22 pulgadas con HD",
        category: first_cat
    }
])