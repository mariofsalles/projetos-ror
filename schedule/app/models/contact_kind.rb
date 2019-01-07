class ContactKind < ApplicationRecord
  belongs_to :contact
  belongs_to :kind
end
