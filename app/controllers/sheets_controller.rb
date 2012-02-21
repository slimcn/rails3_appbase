class SheetsController < ApplicationController
  before_filter :authenticate_user!
  
  active_scaffold :sheet do |conf|
  end
end 
