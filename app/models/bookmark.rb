class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "Este marcador ya existe para esta película y lista" }
end
