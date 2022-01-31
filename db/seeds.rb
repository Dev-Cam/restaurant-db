print 'Creating users....'

User.destroy_all

u1 = User.create!(
  name: "Bob",
  image: "http://www.fillmurray.com/200/200",
  bio: "bob make food, bob good cook, bob bob bob",
  email: 'bob@mail.com',
  password: 'chicken'
)

u2 = User.create!(
  name: "Cam",
  image: "http://www.fillmurray.com/200/200",
  bio: "Stuff about food and things",
  email: 'cam@mail.com',
  password: 'chicken'
)

u3 = User.create!(
  name: "Jess",
  image: "http://www.placekitten.com/200/200",
  bio: "I make better food than the queen",
  email: 'jess@mail.com',
  password: 'chicken'
)


puts "created #{ User.count } users."


##############################################################

print "creating recipes ......"

Recipe.destroy_all

r1 = Recipe.create!(
name: "Toast",
ingredients: "2 slices of bread, butter, vegemite",
method: "1. put bread in toaster, 
2. push button on toaster to run toaster. 
3. when toast pops up take out and spread butter, follow butter with vegemite
4. throw toast out because vegemite is yuck",
description: "A recipe to make the worst ever toast combination"
)

r2 = Recipe.create!(
name: "Boiled water",
ingredients: "the freshest tap water you can get your hands on (I used free-range organic fluoride infused Ryde tap water)",
method: "1. get large pot from cupboard 
2. place fresh tap water in pot 
3. place pot on stove 
4. turn heat to high and wait till water boils 
5. once boiled, add other things to it or place in ice trays and freeze so you always have boiling water on hand",
description: "A chef staple used for many many things. NOTE: popular to contrary belief, you can actually watch the pot and the water will still boil"
)

r3 = Recipe.create!(
name: "Ice-cream cone",
ingredients: "your favourite icecream, 1 x childhood style cone, 100-200 sprinkles",
method: "1. take icecream out from freezer and place cone next to it 
2. find the biggest spoon in your house so you can comfort yourself knowing you only had 'one scoop' of ice-cream 
3. place icecream onto cone 
4. justify your spoon choice to your wife who isn't happy you ate most of the icecream 
5. tell her this cone is actually for her 
6. feel relieved you got out of that one 
7. add sprinkles one at a time for the perfect result",
description: "Great date night recipe or small snack after a hard day of coding. Warning! outcomes may vary depending if you forget step 5"
)

r4 = Recipe.create!(
  name: "Cup of milo",
  ingredients: "tin of milo, drop of milk",
  method: "1. find the smallest spoon you have and take one scoop of milo out of the tin and place it in a cup 
  2. take milk and fill the tiny hole in the milo can, wrap cup of milo and place back in cupboard 
  3. stir milk and milo until it is as though the milk was never there 
  4. enjoy milo how it was made to be enjoyed",
  description: "Childhood favourite and a standard recipe for all milo drinks regardless of age Disclaimer: If under the age of 18 or you didn't buy the milo yourself, make out of responsible adults sight or you may find yourself in trouble" 
)
u1.recipes << r1
u2.recipes << r3 << r4
u3.recipes << r2


puts "created #{ Recipe.count } recipes."

#####################################################################

print "creating categories....."

Category.destroy_all


c1 = Category.create! name:"Main"
c2 = Category.create! name:"Starter"
c3 = Category.create! name:"Dessert"
c4 = Category.create! name:"Breakfast"
c5 = Category.create! name:"Lunch" 
c6 = Category.create! name:"Dinner"
c7 = Category.create! name:"Basics"

puts "created #{ Category.count } categories."

###################################################################

print "creating recipe images ......"


RecipeImage.destroy_all

ri1 = RecipeImage.create! image_url:"http://fillmurray.com/300/300"
ri2 = RecipeImage.create! image_url:"http://picsum.photos/200/300"
ri3 = RecipeImage.create! image_url:"http://picsum.photos/200/300"
ri4 = RecipeImage.create! image_url:"http://picsum.photos/200/300"
ri5 = RecipeImage.create! image_url:"http://picsum.photos/200/300"
ri6 = RecipeImage.create! image_url:"http://picsum.photos/200/300"

puts "created #{ RecipeImage.count } recipe images."


