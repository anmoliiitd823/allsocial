class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
<<<<<<< HEAD

  has_many :likes, as: :likeable

  	def user_can_like(user)
		return self.likes.find_by(user: user).blank?
	end

	def current_like_status(user)
		if user_can_like(user)
			return 'Like'
		else
			return 'Unlike'
		end
	end
=======
>>>>>>> 9c85a46a125b76c917caa1a48018fc6aad094960
end
