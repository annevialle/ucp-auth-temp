class SecureUserSerializer < ActiveModel::Serializer
  self.root = false
  attributes :id, :first_name, :last_name, :email, :type, :roles
  has_one :information
  def roles
    object.roles.select(:name)
  end
end
