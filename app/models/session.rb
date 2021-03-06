class Session < CouchRestRails::Document
  use_database :sessions

  property :user_name
  def autheniticate_user
    user = User.find_by_user_name(@user_name)

    authenticated = !user.nil? && user.autheticate(@password)

    if not authenticated
      errors.add(:base, "Invalid credentials. Please try again!")
    end

    authenticated
  end

end
