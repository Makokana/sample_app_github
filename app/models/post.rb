class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
  validates :comment, {length: {maximum: 140}}
  mount_uploader :video, VideoUploader

  belongs_to :user

  def user
    return User.find_by(id: self.user_id)
  end

  def self.search(search)
      return Post.all unless search
      Post.where(['content LIKE ?', "%#{search}%"])
  end

end
