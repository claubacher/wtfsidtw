Wtfsidtw::Application.routes.draw do
	post 'wtf' => 'application#wtf', :as => :wtf
	get '/text' => 'application#text'
  root :to => 'application#index'
end
