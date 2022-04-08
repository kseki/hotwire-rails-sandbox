class OtherController < ApplicationController
  def post_sometiong
    respond_to do |format|
      format.turbo_stream { }
    end
  end
end
