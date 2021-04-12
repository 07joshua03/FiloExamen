class EndTerm < ApplicationRecord
  default_scope {order(number: :asc)}

  include AlgoliaSearch

  algoliasearch per_environment: true do
    attributes :created_at,:number, :chapter, :definition
  end

  algoliasearch id: :algolia_id do
  end

  def algolia_id
    "endterm_#{id}"
  end

end
