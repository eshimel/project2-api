#
class User < ActiveRecord::Base
  include Authentication

  has_many :entries
  has_one :quick_post
end
