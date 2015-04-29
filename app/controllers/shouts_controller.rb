class ShoutsController < ApplicationController
  def index
    @shouts = Shout.all
  end
  
  def create
    @shout = Shout.new(shout_params)
    @shout.save!
  end

    private
    
    def shout_params
    params.require(:shout).permit(:content)
    end
end