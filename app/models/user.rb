class User < ActiveRecord::Base
  has_many :posts

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.email = auth['email']
    end
  end
end
