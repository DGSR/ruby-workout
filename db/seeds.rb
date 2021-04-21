Image.delete_all
Image.reset_pk_sequence
Image.create([
               {name: 'chihuahua-1', file: 'chihuahua-1.jpg', theme_id: 2},
               {name: 'chihuahua-2', file: 'chihuahua-2.jpg', theme_id: 2},
               {name: 'chihuahua-3', file: 'chihuahua-3.jpg', theme_id: 2},
               {name: 'chihuahua-4', file: 'chihuahua-4.jpg', theme_id: 2},
               {name: 'chihuahua-5', file: 'chihuahua-5.jpg', theme_id: 2},
               {name: 'chihuahua-6', file: 'chihuahua-6.jpg', theme_id: 2},
               {name: 'chihuahua-7', file: 'chihuahua-7.jpg', theme_id: 2},
               {name: 'chihuahua-8', file: 'chihuahua-8.jpg', theme_id: 2},
               {name: 'cupcake-1', file: 'muffin-1.jpg', theme_id: 2},
               {name: 'cupcake-2', file: 'muffin-2.jpg', theme_id: 2},
               {name: 'cupcake-3', file: 'muffin-3.jpg', theme_id: 2},
               {name: 'cupcake-4', file: 'muffin-4.jpg', theme_id: 2},
               {name: 'cupcake-5', file: 'muffin-5.jpg', theme_id: 2},
               {name: 'cupcake-6', file: 'muffin-6.jpg', theme_id: 2},
               {name: 'cupcake-7', file: 'muffin-7.jpg', theme_id: 2},
               {name: 'cupcake-8', file: 'muffin-8.jpg', theme_id: 2},
               {name: 'bagel-1', file: 'bagel-1.jpg', theme_id: 3},
               {name: 'bagel-2', file: 'bagel-2.jpg', theme_id: 3},
               {name: 'bagel-3', file: 'bagel-3.jpg', theme_id: 3},
               {name: 'bagel-4', file: 'bagel-4.jpg', theme_id: 3},
               {name: 'bagel-5', file: 'bagel-5.jpg', theme_id: 3},
               {name: 'bagel-6', file: 'bagel-6.jpg', theme_id: 3},
               {name: 'bagel-7', file: 'bagel-7.jpg', theme_id: 3},
               {name: 'bagel-8', file: 'bagel-8.jpg', theme_id: 3},
               {name: 'dog-1', file: 'dog-1.jpg', theme_id: 3},
               {name: 'dog-2', file: 'dog-2.jpg', theme_id: 3},
               {name: 'dog-3', file: 'dog-3.jpg', theme_id: 3},
               {name: 'dog-4', file: 'dog-4.jpg', theme_id: 3},
               {name: 'dog-5', file: 'dog-5.jpg', theme_id: 3},
               {name: 'dog-6', file: 'dog-6.jpg', theme_id: 3},
               {name: 'dog-7', file: 'dog-7.jpg', theme_id: 3},
               {name: 'dog-8', file: 'dog-8.jpg', theme_id: 3},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               {name: "-----"},      # 1 Нет темы\
               {name: "Cupcake or Chihuahua?"},      # 2
               {name: "Bagel or Dog?"},      # 3
             ])

User.delete_all
User.reset_pk_sequence
User.create([
              {name: "Example User", email: "example@railstutorial.org" }
            ])
