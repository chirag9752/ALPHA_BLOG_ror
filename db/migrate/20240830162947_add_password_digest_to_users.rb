class AddPasswordDigestToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :password_digest, :string
  end
end


# after rails db:migrate we see when we run User.all   Password_digest nil is showing in all user table

# BCrypt::Password.create("password")  ->  generate hascode password

# password = _           # threw this uper wala isme aajyega

# password.salt          # show "$2a$12$wVjh6NTDYesNMKG8riNcXe"  which is used as a key to hash password

# user = User.last
# user.password = "password123"
# user.save


# used to check password
# user.authenticate("password")   # false

# user.authenticate("password123") 

# => 
#<User:0x00007f96c16cb1a0
#  id: 8,
#  username: "rishab bhai",
#  email: "rishub@gmail.com",
#  created_at: Fri, 30 Aug 2024 15:13:06.705077000 UTC +00:00,
#  updated_at: Fri, 30 Aug 2024 16:55:17.507532000 UTC +00:00,
#  password_digest: "[FILTERED]">




