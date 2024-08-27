class Article < ApplicationRecord
    validates :title, presence:true, length: {minimum: 6 , maximum: 100}
    validates :description, presence:true, length: {minimum: 10 , maximum: 200}
   
end


# this model gives us getters and setters so we can actually
# work with individual articles and their title and description
# and the tool we are going to do this communication is [rails console ]

# rails console    # to go inside console to interact with db table

# Article.all      -> to show all records of article table
# Article.create(title: "first article", description: "first description")


# article = Article.new
# article
# #<Article:0x00007f524657e4d8
# id: nil,
# title: nil,
# created_at: nil,
# updated_at: nil,
# description: nil>

# article.title = "second article"
# => "second article"

# article.description = "second description"
# => "second description"

# article


# #<Article:0x00007f524657e4d8
# id: nil,
# title: "second article",
# created_at: nil,
# updated_at: nil,
# description: "second description">

# article.save

# irb(main):010> Article.all
#   Article Load (0.2ms)  SELECT "articles".* FROM "articles" /* loading for pp */ LIMIT ?  [["LIMIT", 11]]
# => 
# [#<Article:0x00007f524657d358
#   id: 1,
#   title: "first article",
#   created_at:
#    Mon, 26 Aug 2024 19:16:22.580309000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:16:22.580309000 UTC +00:00,
#   description: "description of first article">,
#  #<Article:0x00007f524657d218
#   id: 2,
#   title: "second article",
#   created_at:
#    Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#   description: "second description">]
# irb(main):011> article
# => 
# #<Article:0x00007f524657e4d8
#  id: 2,
#  title: "second article",
#  created_at: Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#  updated_at: Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#  description: "second description">



# article = Article.new(title: "third article", description: "third description")
# article.save


# irb(main):015> Article.all
#   Article Load (0.2ms)  SELECT "articles".* FROM "articles" /* loading for pp */ LIMIT ?  [["LIMIT", 11]]
# => 
# [#<Article:0x00007f524657b698
#   id: 1,
#   title: "first article",
#   created_at:
#    Mon, 26 Aug 2024 19:16:22.580309000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:16:22.580309000 UTC +00:00,
#   description: "description of first article">,
#  #<Article:0x00007f524657b558
#   id: 2,
#   title: "second article",
#   created_at:
#    Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#   description: "second description">,
#  #<Article:0x00007f524657b418
#   id: 3,
#   title: "third article",
#   created_at:
#    Mon, 26 Aug 2024 19:21:30.842985000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:21:30.842985000 UTC +00:00,
#   description: "third description">]
# irb(main):016> 
# irb(main):017> 
# irb(main):018> 


# irb(main):019> Article.all
#   Article Load (0.1ms)  SELECT "articles".* FROM "articles" /* loading for pp */ LIMIT ?  [["LIMIT", 11]]
# => 
# [#<Article:0x00007f5246572a98
#   id: 1,
#   title: "first article",
#   created_at:
#    Mon, 26 Aug 2024 19:16:22.580309000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:16:22.580309000 UTC +00:00,
#   description: "description of first article">,
#  #<Article:0x00007f5246572958
#   id: 2,
#   title: "second article",
#   created_at:
#    Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:19:50.094251000 UTC +00:00,
#   description: "second description">,
#  #<Article:0x00007f5246572818
#   id: 3,
#   title: "third article",
#   created_at:
#    Mon, 26 Aug 2024 19:21:30.842985000 UTC +00:00,
#   updated_at:
#    Mon, 26 Aug 2024 19:21:30.842985000 UTC +00:00,
#   description: "third description">]


# exit       # exit used to exit from console which is used to connect to db

