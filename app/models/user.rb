class User < ActiveRecord::Base
  has_many :tasks
  def full_name
    "#{first_name} #{last_name}"
  end
end