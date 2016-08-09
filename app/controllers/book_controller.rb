class BookController < ApplicationController

def index
@author = Author.all
end

end
