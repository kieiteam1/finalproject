# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
user_list = [       { :name => "Wooil",
                      :password => "letmein",
                      :email => "wshin20@kellogg.northwestern.edu",
                      :zipcode => 10219,
                      :prf_category_id => 1,
                      :prf_product_id => 1,
                      },
                    { :name => "dylan",
                      :password => "letmein",
                      :email => "dylan@dylan.northwestern.edu",
                      :zipcode => 10219,
                      :prf_category_id => 2,
                      :prf_product_id => 1,
                      },
                    { :name => "jumpei",
                      :password => "letmein",
                      :email => "jumpei@jumpei.northwestern.edu",
                      :zipcode => 10219,
                      :prf_category_id => 1,
                      :prf_product_id => 2,
                      },
                    { :name => "jeffcohen",
                      :password => "qwer1234",
                      :email => "jazzyjeff@j.northwestern.edu",
                      :zipcode => 60219,
                      :prf_category_id => 1,
                      :prf_product_id => 4,
                      },
                    { :name => "brian",
                      :password => "1111",
                      :email => "brian@northwestern.edu",
                      :zipcode => 10219,
                      :prf_category_id => 2,
                      :prf_product_id => 3,
                      }
                    ]

  user_list.each do |user_list|
   u = User.new
   u.name = user_list[:name]
   u.password = user_list[:password]
   u.email = user_list[:email]
   u.zipcode = user_list[:zipcode]
   u.prf_category_id = user_list[:prf_category_id]
   u.prf_product_id = user_list[:prf_product_id]
   u. save
  end

puts "There are now #{User.count} users in the database."



# ["Jumpei", "Dylan", "Woo"].each do |name|
#  u = User.new
#  u.first_name = name
#  u.password = "hockey"
#  u.save
# end






Category.destroy_all
["Tablet", "Cellphone", "Other"].each do |category_name|
  c = Category.new
  c.name = category_name
  c.save
end

puts "There are now #{Category.count} categories in the database."

Product.destroy_all
["iPad Air", "iPad", "Nexus 7"].each do |product_name|
  c = Product.new
  c.name = product_name
  c.save
end

puts "There are now #{Product.count} products in the database."

Deal.destroy_all

deal_list = [       { :name => "Google Nexus 7 Tablet (7-Inch, 32GB, Black) by ASUS (2013)",
                      :original_price => 269,
                      :deal_price => 239,
                      :product_id => 1,
                      :category_id => 1,
                      :image_url => 'http://ecx.images-amazon.com/images/I/31rWhdb1fXL.jpg',
                      :description => "World's sharpest 7 tablet screen (323 ppi). Powerful battery, up to 9 hrs of active use. Quad-core speed and performance, 2GB RAMs with Android 4.3.",
                      :link => "http://google.com"
                    },
                    { :name => "Kindle Fire HDX 7 Tablet",
                      :original_price => 269,
                      :deal_price => 239,
                      :product_id => 2,
                      :category_id => 1,
                      :image_url => 'http://ecx.images-amazon.com/images/I/31rWhdb1fXL.jpg',
                      :description => "World sharpest 7 tablet screen (323 ppi). Powerful battery, up to 9 hrs of active use. Quad-core speed and performance, 2GB RAMs with Android 4.3.",
                      :link => "http://google.com"
                    },
                     {:name => "Blackberry Playbook 7-Inch Tablet (64GB)",
                      :original_price => 244,
                      :deal_price => 200,
                      :product_id => 3,
                      :category_id => 1,
                      :image_url => 'http://ecx.images-amazon.com/images/I/411jQXFbXYL._AA160_.jpg',
                      :description => "7 inch multi-touch LCD, 1024 x 600-pixel resolution",
                      :link => "http://google.com"
                    },

                    { :name => "Dragon touch 7, Dual core, 16GB, Tablet, 2011",
                      :original_price => 73,
                      :deal_price => 70,
                      :product_id => 4,
                      :category_id => 1,
                      :image_url => 'http://ecx.images-amazon.com/images/I/51P58UoM4fL._SL1500_.jpg',
                      :description => "7 Inch Multi-touch screen (1024x600),Google Android 4.1 (Jelly Bean)",
                      :link => "http://google.com"
                    },

                    { :name => "Samsung T211 Galaxy Tab 3 lite",
                      :original_price => 260,
                      :deal_price => 200,
                      :product_id => 5,
                      :category_id => 1,
                      :image_url => 'http://ecx.images-amazon.com/images/I/41rTQCo5K5L._SY355_.jpg',
                      :description => "Weight 3g, 850/1900 Whitensity (323 PPI)",
                      :link => "http://google.com"
                    },

                    { :name => "APPLE iPhone 4 16GB, CDMA version,2011",
                      :original_price => 214,
                      :deal_price => 120,
                      :product_id => 1,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/41eVAfYDANL._SL500_AA300_.jpg',
                      :description => "Size 16 GB, CDMA Verizon phone only, does NOT have a SIM card",
                      :link => "http://google.com"
                    },
                    { :name => "Blackberry Z10 16GB Unlocked GSM Phone with BlackBerry 10 OS",
                      :original_price => 270,
                      :deal_price => 200,
                      :product_id => 2,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/31hvQYvzokL._AA160_.jpg',
                      :description => "Dual-Core Processor, 4.2 Touchscreen, 8MP Camera, Secondary 2MP Camera",
                      :link => "http://google.com"
                    },
                    { :name => "Blackberry Torch 9860 Phone",
                      :original_price => 137,
                      :deal_price => 130,
                      :product_id => 3,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/41G5JYQ%2BRsL._AA160_.jpg',
                      :description => "4GB Internal Memory, Blackberry OS 7, 3G and 5MP Camera",
                      :link => "http://google.com"
                    },
                    { :name => "Samsung Galaxy S DUOS S7562 GSM Phone ",
                      :original_price => 244,
                      :deal_price => 200,
                      :product_id => 4,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/51%2Bsi3hm8LL._SX385_.jpg',
                      :description => "Dual SIM, Android 4.0 OS4, Touchscreen, GPS",
                      :link => "http://google.com"
                    },
                    { :name => "Motorola MOTOLUXE XT615 GSM Phone ",
                      :original_price => 199,
                      :deal_price => 180,
                      :product_id => 5,
                      :category_id => 2,
                      :image_url => 'http://ecx.images-amazon.com/images/I/512%2BzQfSV7L._AA160_.jpg',
                      :description => "Touchscreen, Android 2.3 OS, 8MP",
                      :link => "http://google.com"
                    },
                    { :name => "Garmin nüvi 40LM 4.3-Inch Portable GPS Navigator",
                      :original_price => 89,
                      :deal_price => 80,
                      :product_id => 1,
                      :category_id => 3,
                      :image_url => 'http://ecx.images-amazon.com/images/I/512nvv9FmeL._AA160_.jpg',
                      :description => "Lifetime maps, data cards: microSD,Speed limit indicator",
                      :link => "http://google.com"
                    }  ]


  deal_list.each do |deal|
   d = Deal.new
   d.name = deal[:name]
   d.original_price = deal[:original_price]
   d.deal_price = deal[:deal_price]
   d.product_id = deal[:product_id]
   d.category_id = deal[:category_id]
   d.image_url = deal[:image_url]
   d.description = deal[:description]
   d.link = deal[:link]
   d. save
  end

puts "There are now #{Deal.count} deals in the catalog."


