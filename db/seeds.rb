# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Item.create(
                name:"God Of War",
                description:"The Guy who killed all Gods.",
                image:"https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/God_of_War_4_cover.jpg/220px-God_of_War_4_cover.jpg",
                price: 35
            )
            
            Item.create(
                name:"GTA",
                description:"Guy who stole all the cars in Los Santos.",
                image:"https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png",
                price: 10
            )

            Item.create(
                name:"Dark Souls",
                description:"Very hard Game.",
                image:"https://images-na.ssl-images-amazon.com/images/I/91QuVskqO1L._SX425_.jpg",
                price: 15
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
