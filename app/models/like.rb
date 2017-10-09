class Like < ActiveRecord::Base
  belongs_to :likeable, polymorphic: true
  belongs_to :user
<<<<<<< HEAD

=======
>>>>>>> 9c85a46a125b76c917caa1a48018fc6aad094960
end
