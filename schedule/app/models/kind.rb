class Kind < ApplicationRecord
  has_many :contact_kinds
  has_many :contacts, through: :contact_kinds
end
