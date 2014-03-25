class Candidate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :omniauthable, :omniauth_providers => [:linkedin]

  class Candidate::ParameterSanitizer < Devise::ParameterSanitizer
    def account_update
      default_params.permit(:firstname, :email, :lastname, :phone, :password, :password_confirmation, :current_password)
    end
  end

  def self.find_for_linkedin_oauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |candidate|
      candidate.provider = auth.provider
      candidate.uid = auth.uid
      candidate.email = auth.info.email
      candidate.password = Devise.friendly_token[0,20]
    end
  end
end
