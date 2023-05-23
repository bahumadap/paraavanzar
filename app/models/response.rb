class Response < ApplicationRecord
  belongs_to :requesting_user
  belongs_to :executive
  belongs_to :ticket
end
