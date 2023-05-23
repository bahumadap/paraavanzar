class Administrator < ApplicationRecord
  belongs_to :user
  has_many :executives, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reports, dependent: :destroy

end
