class Author < ActiveRecord::Base
has_many :books

def to_s
	"#{first_name} #{last_name}"
end

#def index
#@author = Author.all

#end


end
