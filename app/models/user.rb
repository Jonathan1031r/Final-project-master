class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :purchases
	has_many :products, through: "purchases"

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type =>['application/pdf', 'application/xlsx'],
                                                       :message => ', Only PDF, EXCEL, WORD or TEXT files are allowed. '
end
