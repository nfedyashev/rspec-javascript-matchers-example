class FoosController < ApplicationController
  # DELETE /foos/1
  # DELETE /foos/1.json
  def destroy
    @enforce_valid_response = !!params[:enforce_valid_response]

    respond_to do |format|
      format.js
    end
  end
end
