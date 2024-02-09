class Article < ApplicationRecord
  validates :title, presence: { message: "Field is required. Enter a title no longer than 50 characters." },
                    length: { maximum: 50 }
  validates :body, presence: { message: "Field is required." }
  validates :author_name, presence: { message: "Field is required." }
  # validate :default_author_name

  # private

  # def default_author_name
  #   self.author_name = "Anonymous" if author_name.blank?
  # end
end
