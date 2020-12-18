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
             
            Item.create(
                name:"Mass Effect",
                description:"Space Game",
                image:"https://upload.wikimedia.org/wikipedia/en/e/e8/MassEffect.jpg",
                price: 3
            )
            
            Item.create(
                name:"Silent Hill 2",
                description:"James in Silent Hill to find his dead wife ...",
                image:"https://images-na.ssl-images-amazon.com/images/I/81ZX5lWqQKL._SY445_.jpg",
                price: 13
            )
            
            Item.create(
                name:"Apex:LEGENDS",
                description:"Battle Royal",
                image:"https://image.api.playstation.com/vulcan/img/rnd/202011/0410/3X0lGo1TPuFEzDHihXkVDKz2.png",
                price: 0
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
