require 'rails_helper'
require 'pry'

describe FoosController, type: 'controller' do
  describe "DELETE destroy" do
    render_views

    context 'given valid javascript response' do
      example do |ex|
        delete :destroy, id: 123, enforce_valid_response: 1, format: :js

        puts "#{ex.metadata[:full_description]}. Response: \n#{response.body}"
        expect(response.body).to be_valid_javascript
      end
    end

    context 'given invalid javascript response' do
      example do |ex|
        delete :destroy, id: 123, format: :js

        puts "#{ex.metadata[:full_description]}. Response: \n#{response.body}"
        expect(response.body).not_to be_valid_javascript
      end
    end
  end
end

