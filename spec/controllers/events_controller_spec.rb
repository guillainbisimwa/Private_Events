require 'rails_helper'

RSpec.describe EventsController do

  describe 'GET index' do
    before(:example) do
      get :index
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'has a 200 status code' do
      expect(response.status).to eq(200)
    end

    it 'get request to events/index routes to new action in the events controller' do
      expect(get: 'events').to route_to('controller' => 'events', 'action' => 'index')
    end
  end

  describe 'GET for unauthenticate user' do
    before(:example) do 
      get :new
    end

    it 'renders the new template' do
      expect(response).to redirect_to('/login')
    end

    it 'has a 200 status code' do
      expect(response.status).to eq(302)
    end

    it 'get request to events/new routes to new action in the sessions controller' do
      expect(get: 'events/new').to redirect_to('controller' => 'sessions', 'action' => 'new')
    end
  end

  describe 'GET show' do

    it 'get request to events/show routes to show action in the events controller' do
      assert_generates "/events/1", { :controller => "events", :action => "show", :id => "1" }
    end
  end

  describe 'POST new for unauthenticate user' do
    subject { post :create, params: { event: { description: 'Any Name', datetime: '2020-12-31' } } }

    it 'expect the media type to be text/html' do
      expect(subject.media_type).to eq 'text/html'
    end

    it 'redirects to login path' do
      expect(subject).to redirect_to('controller' => 'sessions', 'action' => 'new')
    end
  end


end