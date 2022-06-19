require "test_helper"

class PostTest < ActiveSupport::TestCase
  setup do
    @post = Post.new(title: 'Title', body: 'This is the body of my post')
  end

  test 'post should be valid' do
    assert @post.valid?
  end

  test "post's title should not be empty" do
    @post.title = nil
    assert_not @post.valid?
  end

  test "post's title should not less than 5 characters" do
    @post.title = 'a' * 4
    assert_not @post.valid?
  end
end
