Wtfsidtw::Application.routes.draw do
	post 'wtf' => 'application#wtf', :as => :wtf
  root :to => 'application#index'
end
