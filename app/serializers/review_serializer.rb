class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user, :content, :created_at

  belongs_to :user
  belongs_to :movie

  def user
    self.object.user.name
  end

  def created_at
    self.object.created_at.strftime('%m/%d/%Y')
  end

end
