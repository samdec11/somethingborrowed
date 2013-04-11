User.delete_all
Item.delete_all
Category.delete_all
Borrow.delete_all
Review.delete_all

u1 = User.create(name:"Jane", email:"samdec11+2@gmail.com", password:"abc", password_confirmation:"abc", address:"251 W 98th St, New York, NY", phone: '(212) 867-5309')
u2 = User.create(name:"Sean", email:"samdec11+1@gmail.com", password:"abc", password_confirmation:"abc", address:"10 E 21st St, New York, NY", phone: '(212) 867-5309')
u3 = User.create(name:"Bob", email:"samdec11+3@gmail.com", password:"abc", password_confirmation:"abc", address:"40 Charlton St, New York, NY", phone: '(212) 867-5309')
u4 = User.create(name:"Sue", email:"samdec11+4@gmail.com", password:"abc", password_confirmation:"abc", address:"90 Park Ave, New York, NY", phone: '(212) 867-5309')


i1 = Item.create(name:"toaster", remote_image_url:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQds5inCDYf_FMY8vi06CgrH0W0wpslMXQPe8qWEP0P5wBV87qXZA")
i2 = Item.create(name:"blender", remote_image_url:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTv8sc2rW3FrK3tiBAY13HN7OcGw6R7O3U8LrilG4myUIwm9oOtPQ")
i3 = Item.create(name:"broom", remote_image_url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRExG2UikOK4r2qiTNhPud9ip1z6CCLKw35qPUcbtzyjEhoBICK")
i4 = Item.create(name:"shovel", remote_image_url:"http://gamechurch.com/wp-content/uploads/2012/10/shovel.jpg")
i5 = Item.create(name:"chocolate fountain", remote_image_url:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR7cCMYdshUyFnxpnszKkOs0twRmNjPR4q5XvQxci2o8g7CsHhL")
i6 = Item.create(name:"xbox", remote_image_url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSbFxMR_w2n8-Qo7OEs5rn8-AMOUu_EYDDS7_qGZaZPxwJRoIxz7g")
i7 = Item.create(name:"ice scraper", remote_image_url:"http://www.rocbroomball.com/images/Long_Handle_Ice_Scraper.jpg")
i8 = Item.create(name:"cake pan", remote_image_url:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRb-deW86ec179Bcn20vVAtzYZ4K5iaTANRgkdvvMCca6xKdUK19Q")
i9 = Item.create(name:"power drill", remote_image_url:"http://media.onsugar.com/files/2010/12/49/3/1164/11643432/a14e060cfa6375d7_dewalt_power_drill.jpg")
i10 = Item.create(name:"hot glue gun", remote_image_url:"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTgqfkx7TY6g1Ngos0sDEkF-kiSBwxECpnypa_meBpfL7Rx_Hyjxg")
i11 = Item.create(name:"garden shears", remote_image_url:"http://image.made-in-china.com/2f0j00WCOtjsnPnapL/Garden-Shears-BY-008-.jpg")
i12 = Item.create(name:"fondue set", remote_image_url:"http://www.ikea.com/us/en/images/products/senior-fondue-set__0084610_PE211420_S4.JPG")
i13 = Item.create(name:"chainsaw", remote_image_url:"http://images.wikia.com/deadliestfiction/images/6/65/Craftsman-chainsaw-35020.jpg")
i14 = Item.create(name:"karaoke machine", remote_image_url:"http://www.karaokemachinereviews.biz/wp-content/uploads/2012/11/karaoke-station-11.jpg")
i15 = Item.create(name:"hammer", remote_image_url:"http://images.wikia.com/walkingdead/images/archive/f/fa/20120121210255!Hammer.jpg")
i16 = Item.create(name:"extension cord", remote_image_url:"http://www.startpac.com/wordpress/wp-content/themes/startpac/images/lrg-model-110-vac-extension-cord.jpg")
i17 = Item.create(name:"dust buster", remote_image_url:"http://4.bp.blogspot.com/_ydGwMcb-Spw/TClWe2AhTeI/AAAAAAAABdQ/pYtLrUOnZms/s1600/dustbuster.jpg")
i18 = Item.create(name:"ladder", remote_image_url:"http://www.ksrsales.com/rentals/images/rental_equip/single_ladders.jpg")
i19 = Item.create(name:"step stool", remote_image_url:"http://www.homewoodoak.com/accessories/FlipOutStepStool.jpg")
i20 = Item.create(name:"iron", remote_image_url:"http://vegannaturopath.files.wordpress.com/2011/11/iron.jpg")

c1 = Category.create(name:"Books")

c2 = Category.create(name:"Movies, Music and Games")

c3 = Category.create(name:"Electronics and Computers")

c4 = Category.create(name:"Home, Garden and Tools")

c5 = Category.create(name:"Grocery, Health and Beauty")

c6 = Category.create(name:"Toys, Kids and Baby")

c7 = Category.create(name:"Clothing, Shoes and Jewelry")

c8 = Category.create(name:"Sports and Outdoors")

c9 = Category.create(name:"Automotive and Industrial")


c1.items
c2.items << i6 << i14
c3.items << i1 << i2 << i6 << i14
c4.items << i1 << i2 << i3 << i4 << i5 << i7 << i8 << i9 << i10 << i11 << i12 << i13 << i15 << i16 << i17 << i18 << i19 << i20
c5.items << i5 << i8 << i12
c6.items
c7.items << i8
c8.items << i4 << i7 << i11 << i13 << i18
c9.items << i7 << i9



a = "Twee YOLO flannel brunch skateboard"
b = "Hella photo booth PBR gluten-free twee, mixtape deep v odd future sustainable brunch pug godard street art chambray. Bespoke odd future whatever pug next level DIY intelligentsia."
Item.all.each_with_index do |x, i|
  x.description = a
  x.instructions = b
  if i > 12
    x.available_from = "2013-#{i-12}-#{i}"
    x.available_until = "2013-#{i-12}-#{i+5}"
  else
    x.available_from = "2013-#{i}-#{i+2}"
    x.available_until = "2013-#{i}-#{i+7}"
  end
  x.save
end

c = Item.all

while c.length != 0
  User.all.each do |x|
    x.items << c.pop
  end
end

b1 = Borrow.create
b2 = Borrow.create

b1.owner = u1
b1.item = u1.items.first
b1.borrower = u2
b1.active = false
b1.borrow_date = Date.yesterday
b1.return_date = Date.today
b1.save

b2.owner = u2
b2.item = u2.items.first
b2.borrower = u1
b2.active = true
b2.borrow_date = Date.today
b2.return_date = u2.items.first.available_until
b2.save
