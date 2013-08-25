require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "messages need author names and body content" do
    invalid_message = Message.new(author_name: nil, body: nil)
    assert invalid_message.invalid?

    valid_message = Message.new(author_name: "Edward", body: "Good chat.")
    assert valid_message.valid?
  end
end
