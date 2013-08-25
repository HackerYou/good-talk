require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "can create messages" do
    assert_difference "Message.count" do
      post :create, {message: {author_name: "Edward", body: "Good chat."}, format: 'json'}
    end
  end

  test "can list messages" do
    message = new_valid_message
    message.save

    get :index, format: 'json'

    assert_equal Message.all, assigns(:messages)
  end

  def new_valid_message(author_name: nil, body: nil)
    message = Message.new
    message.author_name = "Edward-#{message.object_id}"
    message.body = "Nice chat. #{message.object_id}"

    raise "Message factory is invalid" if message.invalid?

    message
  end
end
