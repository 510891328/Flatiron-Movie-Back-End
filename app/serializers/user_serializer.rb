class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :purchases

  def purchases
    self.object.movies
  end
  
end
