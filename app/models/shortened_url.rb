
class ShortenedUrl < ActiveRecord::Base
	validates :short_url, :long_url, :submitter_id, presence: true
	validates :short_url, uniqueness: true

	belongs_to :submitter,
		primary_key: :id,
		foreign_key: :submitter_id,
		class_name: 'User'

	def self.random_code
		url = SecureRandom::urlsafe_base64
		while ShortenedUrl.exists?(short_url: url)
			url = SecureRandom::urlsafe_base64
		end

		url
	end

	def self.create_for_user_and_long_url!(user, long_url)
		create!(short_url: random_code, long_url: long_url, submitter_id: user.id )
	end

end
