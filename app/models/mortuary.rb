class Mortuary < ApplicationRecord
	geocoded_by :zip_code
	after_validation :geocoded_by
end
