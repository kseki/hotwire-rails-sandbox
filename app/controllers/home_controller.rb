class HomeController < ApplicationController
  # @route GET /trubo_frame_from
  def turbo_frame_from
  end

  # @route POST /trubo_frame_submit
  def turbo_frame_submit
    extracted_anynumber = params[:any][:anynumber]
    render :turbo_frame_form, status: :ok, locals: { anynumber: extracted_anynumber, comment: 'turbo_frame_submit ok' }
  end
end
