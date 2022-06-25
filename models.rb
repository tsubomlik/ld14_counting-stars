require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection
class User < ActiveRecord::Base
    has_secure_password
     validates :username,
      presence: true
    #  validates :password_digest,
    #   length: {in:5..20}
    has_many :counters
end

class Counter < ActiveRecord::Base
    belongs_to :user
end


