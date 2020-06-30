# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u0 = User.create!(user_name:'0',name:'0',birth_date:'20/04/2222',address:'0 0',email:'c@mail.com',password:'123123123')
u1 = User.create!(user_name:'Pepe',name:'Pepe',birth_date:'20/04/2222',address:'donde Pepe',email:'PP@mail.com',password:'123123123')
u2 = User.create!(user_name:'Fifi',name:'Fiji',birth_date:'20/04/2222',address:'donde Pepe',email:'Fiji@mail.com',password:'123123123')
b0 = Business.create!(name:'independent', rut:'000000000',email:'independent@mail.com',password:'123123123')
b1 = Business.create!(name:'Cristo\'s corp', rut:'123123123',email:'clara@mail.com',password:'123123123')
b2 = Business.create!(name:'Martin\'s corp', rut:'234234234',email:'martin@mail.com',password:'123123123')
s1 = Shop.create!(location:'tijuana',opening_schedule:'9:30 AM',closing_schedule:'8:00 PM',shop_type:'store',dimension:'200',Business_id:b1)
s2 = Shop.create!(location:'panamericana',opening_schedule:'9:30 AM',closing_schedule:'8:00 PM',shop_type:'Supermarket',dimension:'400',Business_id:b2)
s3 = Shop.create!(location:'rada',opening_schedule:'9:30 AM',closing_schedule:'8:00 PM',shop_type:'Hospital',dimension:'300',Business_id:b0)
c1 = Communicate.create!(indoors_quantity:'10',waiting_line_quantity:'20',Shop_id:s1,User_id:u1)
c2 = Communicate.create!(indoors_quantity:'15',waiting_line_quantity:'30',Shop_id:s2,User_id:u0)
c3 = Communicate.create!(indoors_quantity:'12',waiting_line_quantity:'20',Shop_id:s1,User_id:u1)
c4 = Communicate.create!(indoors_quantity:'12',waiting_line_quantity:'20',Shop_id:s3,User_id:u2)
r1 = BadReport.create!(comment:'radarada',User_id:u2,Communicate_id:c1)
r2 = BadReport.create!(comment:'mocosmocos',User_id:u1,Communicate_id:c3)
