# frozen_string_literal: true

json.call(user, :username, :bio, :id)
json.image user.image || 'https://static.productionready.io/images/smiley-cyrus.jpg'
json.following signed_in? ? current_user.following?(user) : false
