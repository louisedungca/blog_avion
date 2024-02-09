class Article < ApplicationRecord
  validates :title, presence: { message: "This field is required." },
                    length: { maximum: 50 }
  validates :body, presence: true
  validate :default_author_name

  private

  def default_author_name
    self.author_name = "Anonymous" if author_name.blank?
  end
end
