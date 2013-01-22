class User < ActiveRecord::Base

  has_many :permissions

  # Include default devise modules. Others available are:
  # :encryptable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  before_save :ensure_authentication_token

  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
