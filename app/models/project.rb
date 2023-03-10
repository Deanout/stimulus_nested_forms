class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy, inverse_of: :project
  # _destroy is a special attribute that is used to mark a record for destruction
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank
end
