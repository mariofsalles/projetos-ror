class Address < ApplicationRecord
  belongs_to :contact, required: false
end
