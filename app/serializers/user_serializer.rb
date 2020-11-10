class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :purchases, :reviews

  has_many :reviews
  
  def purchases
    self.object.movies
  end

  def reviews
    self.object.reviews
  end

end
