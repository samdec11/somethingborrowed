User.delete_all
Item.delete_all
Category.delete_all
Borrow.delete_all

u1 = User.create(name:"Jane", email:"janesternbach+1@gmail.com", password:"abc", password_confirmation:"abc")
u2 = User.create(name:"Sean", email:"seanwdicourse+1@gmail.com", password:"abc", password_confirmation:"abc")
u3 = User.create(name:"Bob", email:"janesternbach+1@gmail.com", password:"abc", password_confirmation:"abc")
u4 = User.create(name:"Sue", email:"seanwdicourse+1@gmail.com", password:"abc", password_confirmation:"abc")

i1 = Item.create(name:"blender", description:"A fully functional ice blending machine with top included", instructions:"insert items to be blended, place top securely, and press start button")
i2 = Item.create(name:"toaster", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.")
i3 = Item.create(name:"chainsaw", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.")
i4 = Item.create(name:"xbobx", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.")
i5 = Item.create(name:"karaoke machine", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.")
i6 = Item.create(name:"chocolate fountain", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.")
i7 = Item.create(name:"fondue set", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.")

u1.items << i1 << i2 << i3 << i4
u2.items << i5 << i6 << i7

c1 = Category.create(name:"Books")
c2 = Category.create(name:"Movies, Music and Games")
c3 = Category.create(name:"Electronics and Computers")
c4 = Category.create(name:"Home, Garden and Tools")
c5 = Category.create(name:"Grocery, Health and Beauty")
c6 = Category.create(name:"Toys, Kids and Baby")
c7 = Category.create(name:"Clothing, Shoes and Jewelry")
c8 = Category.create(name:"Sports and Outdoors")
c9 = Category.create(name:"Automotive and Industrial")

i1.categories << c4
i2.categories << c4
i3.categories << c4
i4.categories << c3 << c2
i5.categories << c3 << c2
i6.categories << c4 << c5
i7.categories << c4 << c5


b1 = Borrow.create
b2 = Borrow.create

b1.owner = u1
b1.item = i1
b1.borrower = u2
b1.active = false
b1.borrow_date = Date.today
b1.return_date = Date.tomorrow
b1.save

b2.owner = u2
b2.item = i5
b2.borrower = u1
b2.active = true
b2.borrow_date = Date.today
b2.return_date = Date.tomorrow
b2.save




