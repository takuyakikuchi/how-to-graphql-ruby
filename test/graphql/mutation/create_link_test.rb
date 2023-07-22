require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateLink.new(object: nil, field: nil, context: { current_user: user}).resolve(**args)
  end

  def create_user
    User.create name: 'Test User', email: 'email@example.com', password: '[omitted]'
  end

  test 'create a new link' do
    user = create_user

    link = perform(
      user: user,
      url: 'http://example.com',
      description: 'description',
    )

    assert link.persisted?
    assert_equal link.description, 'description'
    assert_equal link.url, 'http://example.com'
  end
end
