module ApplicationHelper

#trouver un truc pour que le remember me fonctionne avec Candidate et Company
#le device mapping doit être attribué aux 2 ressources
		def resource_name
			:candidate
		end

		def resource
			@resource ||= Candidate.new
		end

		def devise_mapping
			@devise_mapping ||= Devise.mappings[:candidate]
		end

end