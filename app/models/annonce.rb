class Annonce < ApplicationRecord
	validates :titre, presence: true
	validates :description, presence: true
	#validates :prix, exclusion: { is: >0 }
	validates :photo, presence: true
end
