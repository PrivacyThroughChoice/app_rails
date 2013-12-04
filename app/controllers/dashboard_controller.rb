class DashboardController < ApplicationController

  has_widgets do |root|
    root << widget(:services)
  end

  def index
  end

end
