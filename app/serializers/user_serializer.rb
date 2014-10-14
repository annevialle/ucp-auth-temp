class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :id, :email, :type, :roles, :authentication_token
  has_one :information
  def roles
    object.roles.select(:name)
  end
end
