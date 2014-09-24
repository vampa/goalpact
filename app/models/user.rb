class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :first_name, :last_name
  attr_reader :twitter_id, :facebook_id

  def full_name
  	"#{first_name} #{last_name}"
  end

end
