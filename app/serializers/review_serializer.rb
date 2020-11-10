class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user, :content

  belongs_to :user
  belongs_to :movie

  def user
    self.object.user.name  
  end

end
