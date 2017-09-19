class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def get_tictail_token
	client_id = 'clientid_GY8178KLmV2yC0Sir9V9CYUXVlYkSJ'
	client_secret = 'clientsecret_2agCU6U4bGjZbPz3CZ52GI8jU9kOh7ySLkPuhGoX'
	current_url = request.fullpath

	code = current_url.partition('=').last

	client = HTTPClient.new
	method = 'GET'
	url = URI.parse 'https://tictail.com/oauth/token'

	query = { 'client_id' => client_id, 'client_secret' => client_secret, 'code' => code, 'grant_type' => 'authorization_code'}
	res = client.post(url, query)
	render html: res.body
end

end
