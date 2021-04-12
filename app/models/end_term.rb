class EndTerm < ApplicationRecord
  default_scope {order(number: :asc)}
end
