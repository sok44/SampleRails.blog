class Article < ApplicationRecord
  validates :title, presence:true
  validates :text,  presence:true
  has_many :comments

  def subject
    #Возвращаем title
    title
  end

  def last_comment
    #Возвращаем последний комментарий
    comments.last
  end

end
