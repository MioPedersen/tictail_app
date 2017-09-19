class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def hello
	render html: "Does this work?"
end

end
