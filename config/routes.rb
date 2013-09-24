Wtfsidtw::Application.routes.draw do
	get '/text' => 'application#text'
	post 'wtf' => 'application#wtf', :as => :wtf
  root :to => 'application#index'
end
