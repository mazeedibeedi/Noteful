class Note < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  
  def preview
    self.content.slice(0..100) << '...(read more)'
  end

  scope :sorted, lambda { order('created_at DESC') }

end
