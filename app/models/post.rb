class Post < ApplicationRecord
  has_and_belongs_to_many :tags

  validates :title, presence: true, length: { minimum: 5 }

  def tag_list
    self.tags.map {|t| t.name }.join(", ")
  end
end
