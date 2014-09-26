class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :type, :roles, :authentication_token
  has_one :information
  def roles
    object.roles.select(:name)
  end
end
