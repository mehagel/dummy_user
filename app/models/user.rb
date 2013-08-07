class User < ActiveRecord::Base

  def self.authenticate(email, password)
    User.find_by email: email, password: password 
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
  end

  # Remember to create a migration!
end
