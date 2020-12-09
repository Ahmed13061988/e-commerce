# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Item.create(
                name:"Sunglasses",
                description:"The trendiest designs for your face.",
                image:"https://source.unsplash.com/SYx3UCHZJlo/250x250",
                price: 125
            )
            
            Item.create(
                name:"not",
                description:"The trendiest designs for your face.",
                image:"https://source.unsplash.com/SYx3UCHZJlo/250x250",
                price: 125
            )


            # user_1 = User.create(
            #     first_name: "Ahmed",
            #     last_name: "Hussein",
            #     email:"ahmed@yahoo.com",
            #     password: "1",
            #     password_confirmation: "1"
            # )


            # cart = user_1.carts.create

            # cart.items << Item 
            # cart.save
