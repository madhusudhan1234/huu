class Question < ApplicationRecord
  def gravatar
    "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
