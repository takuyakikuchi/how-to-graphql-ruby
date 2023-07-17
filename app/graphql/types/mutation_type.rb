module Types
  class MutationType < Types::BaseObject
    field :create_link, mutation: Mutations::CreateLink
    field :create_user, mutation: Mutations::CreateUser
    field :signin_user, mutation: Mutations::SignInUser
  end
end
