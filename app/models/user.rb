class User < ApplicationRecord
    validates :username, presence: true, 
                         uniqueness: { case_sensitive: false }, 
                         length: {minimum:3, maximum:25}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
                      uniqueness: { case_sensitive: false },
                      length: {maximum:105},
                      format: { with: VALID_EMAIL_REGEX}
end
# after putting validation 
# reload!
# create
# user.valid?  otherwise no error display while using user.error.full_messages
# uniqueness: true   for unique value
# uniqueness: { case_sensitive: false } also check case senstivity


# everything working perfectly except checking weather email is in email formate or not
# for checking this we using regular expression

# search ruby regex for email formate validation
 
# we can put constants like this        VALID_EMAIL_REGEX

# you can check your expression in https://rubular.com/
