class Term < ApplicationRecord
  default_scope {order(end_term: :asc)}
  belongs_to :end_term, :foreign_key => 'end_term', :primary_key => 'number'
end
