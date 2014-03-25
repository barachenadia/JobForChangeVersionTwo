class Candidates::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    @candidate = Candidate.find_for_linkedin_oauth(request.env["omniauth.auth"])

    if @candidate.persisted?
      sign_in_and_redirect @candidate, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Linkedin") if is_navigational_format?
    else
      session["devise.linkedin_data"] = request.env["omniauth.auth"]
      redirect_to new_candidate_registration_url
    end
  end
end