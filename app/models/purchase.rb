class Purchase < ApplicationRecord
	belong_to :users
	belong_to :products
end
