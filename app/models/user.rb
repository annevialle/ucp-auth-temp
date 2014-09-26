class User < ActiveRecord::Base
    acts_as_token_authenticatable
    rolify
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    has_one :information
    has_many :promotions
    has_many :formations, through: :promotions
end
