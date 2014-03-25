class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  class Company::ParameterSanitizer < Devise::ParameterSanitizer
  	def account_update
  		default_params.permit(:email, :phone, :postal_code, :password, :password_confirmation, :current_password)
  	end
  end
end
