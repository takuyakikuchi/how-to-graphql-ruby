module Types
  class QueryType < Types::BaseObject
    field :all_links, resolver: Resolvers::LinksSearch

    def all_links
      Link.all
    end
  end
end
