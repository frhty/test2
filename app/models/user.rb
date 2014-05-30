class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :authoriztions

  def self.create_from_auth!(hash)
    created_hash = {:email => hash[:user_info][:email], :name => hash[:user_info][:name] }
    user = (created_hash[:email].nil? ? nil : User.find_by_email(created_hash[:email])) || User.new(created_hash)
    if user.email
      user.confirm!
    elsif user
      user.save!
    end
    user
  end
end
