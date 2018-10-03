require 'rails_helper'

RSpec.describe User, type: :model do

  Given(:first_name) { "John" }
  Given(:last_name) { "Doe" }
  Given(:email) { "example@email.com" }
  Given(:password) { "password" }
  Given(:user_information) { {first_name: first_name, last_name: last_name, email: email} }
  Given(:user) { User.new(user_information) }

  describe "#initialize" do 
      context "It creates a user with the given information" do
          Given { user.password = password } 
          When { user.save } 
          Then { expect(User.where(user_information)).to exist }
      end

      context "It requires first_name, last_name, email, and password to save" do
        Given (:incorrect_user) { User.new }
        Then { expect(user.save).to be(false) }
      end
  end

end
