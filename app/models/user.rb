class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :purchases
	has_many :products, through: "purchases"

	has_attached_file :avatar
  	validates_attachment_content_type :avatar, :content_type =>['application/pdf', 'application/xlsx', 'text/plain', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/msword', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
                                                       :message => ', Only PDF, EXCEL, WORD or TEXT files are allowed. '
end
