class PhotsController < ApplicationController
  def index
    @phots = Phot.all
  end
end
