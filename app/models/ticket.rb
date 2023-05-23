class Ticket < ApplicationRecord
  belongs_to :requesting_user
  belongs_to :executive
  has_many :documents, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :responses, dependent: :destroy


  
end