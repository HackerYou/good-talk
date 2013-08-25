class Message < ActiveRecord::Base
  validates :author_name, :body, presence: true
end
