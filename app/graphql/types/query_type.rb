module Types
  class QueryType < Types::BaseObject
    field :all_links, [LinkType], null: false
  end

  def all_links
    Link.all
  end
end
