class User < ActiveRecord::Base
    after_create :add_roles
    acts_as_token_authenticatable
    rolify
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    has_one :information
    has_many :groups
    has_many :promotions, through: :groups
    accepts_nested_attributes_for :information

    def add_roles
        unless self.type.nil?
            self.add_role self.type.downcase.to_sym
        end
    end

    def self.add_users
        User.all.each do |d|
            Group.create(user: d, promotion: Promotion.first)
        end
    end

    def recent_promotion
        self.promotions.order("promo_date DESC").first
    end
end
