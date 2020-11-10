class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :purchases, :reviews

  def purchases
    self.object.movies
  end

  def reviews
    self.object.reviews
  end
  
end
