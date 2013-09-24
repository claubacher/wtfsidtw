Wtfsidtw::Application.routes.draw do
	post 'wtf' => 'application#wtf', :as => :wtf
	get '/text' => 'application#text'
	get '/message' => 'application#message', :as => :message
  root :to => 'application#index'
end
