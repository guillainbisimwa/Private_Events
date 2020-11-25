require 'rails_helper'

RSpec.describe EventsController do

  describe 'POST new for unauthenticate user' do
    subject { post :create, params: { format: '1' } }

    it 'expect the media type to be text/html' do
      expect(subject.media_type).to eq 'text/html'
    end

    it 'redirects to login path' do
      expect(subject).to redirect_to('controller' => 'sessions', 'action' => 'new')
    end
  end

end