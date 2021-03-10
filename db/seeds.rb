Image.delete_all
Image.reset_pk_sequence
Image.create([
               {name: 'chihuahua-1', file: 'chihuahua-1.jpg', theme_id: 3},
               {name: 'cupcake-1', file: 'muffin-1.jpg', theme_id: 2},
               {name: 'chihuahua-2', file: 'chihuahua-2.jpg', theme_id: 3},
               {name: 'cupcake-2', file: 'cupcake-2.jpg', theme_id: 2},
               {name: 'bagel-1', file: 'bagel-1.jpg', theme_id: 4},
               {name: 'dog-1', file: 'dog-1.jpg', theme_id: 5},
               {name: 'bagel-2', file: 'bagel-2.jpg', theme_id: 4},
               {name: 'dog-2', file: 'dog-2.jpg', theme_id: 5},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               {name: "-----"},      # 1 Нет темы
               {name: "Cupcake?"},      # 2
               {name: "Chihuahua?"},      # 3
               {name: "Bagel?"},      # 4
               {name: "Dog?"},      # 5
             ])

User.delete_all
User.reset_pk_sequence
User.create([
              {name: "Example User", email: "example@railstutorial.org" }
            ])
