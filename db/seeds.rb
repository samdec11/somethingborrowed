User.delete_all
Item.delete_all
Category.delete_all
Borrow.delete_all

u1 = User.create(name:"Jane", email:"janesternbach+1@gmail.com", password:"abc", password_confirmation:"abc", address:"251 W 98th St, New York, NY")
u2 = User.create(name:"Sean", email:"samdec11+1@gmail.com", password:"abc", password_confirmation:"abc", address:"10 E 21st St, New York, NY")
u3 = User.create(name:"Bob", email:"janesternbach+2@gmail.com", password:"abc", password_confirmation:"abc", address:"40 Charlton St, New York, NY")
u4 = User.create(name:"Sue", email:"samdec11+2@gmail.com", password:"abc", password_confirmation:"abc", address:"90 Park Ave, New York, NY")

i1 = Item.create(name:"blender", description:"A fully functional ice blending machine with top included", instructions:"insert items to be blended, place top securely, and press start button")
i2 = Item.create(name:"toaster", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.", available_from:"2013-03-29", available_until:"2013-04-10")
i3 = Item.create(name:"chainsaw", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.", available_from:"2013-04-10", available_until:"2013-04-20")
i4 = Item.create(name:"xbobx", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.", available_from:"2013-04-20", available_until:"2013-04-30")
i5 = Item.create(name:"karaoke machine", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.", available_from:"2013-04-29", available_until:"2013-05-10")
i6 = Item.create(name:"chocolate fountain", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.", available_from:"2013-05-15", available_until:"2013-05-31")
i7 = Item.create(name:"fondue set", description:"Or perhaps he's wondering why someone would shoot a man before throwing him out of the plane.", instructions:"Ooh, you think darkness is your ally? You merely adopted the dark, I was born in it. Molded by it. I didn't see the light until I was already a man. By then there was nothing to be but blinded.", available_from:"2013-04-09", available_until:"2013-04-13")

u1.items << i1 << i4
u2.items << i5 << i7
u3.items << i2 << i6
u4.items << i3

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