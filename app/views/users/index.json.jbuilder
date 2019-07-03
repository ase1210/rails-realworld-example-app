# frozen_string_literal: true

json.users do 
  json.array! @users, partial: 'profiles/profile', as: :user
end

json.users_count @users_count
