Wtfsidtw::Application.routes.draw do
	post 'wtf' => 'application#wtf', :as => :wtf
	get '/text' => 'application#text'
	post '/message' => 'application#message', :as => :message
  root :to => 'application#index'
end
