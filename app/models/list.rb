class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: { message: "can't be blank" }, uniqueness: { message: "must be unique" }
end
