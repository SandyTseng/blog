class Article < ActiveRecord::Base
 has_many :comments
  validates :title, presence: true,
                    length: { minimum: 8 }
end
