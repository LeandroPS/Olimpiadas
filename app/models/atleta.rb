class Atleta < ApplicationRecord
  belongs_to :modalidade
	
	mount_uploader :photo, PhotoAtletaUploader
end
