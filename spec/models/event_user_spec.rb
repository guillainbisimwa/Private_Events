require 'rails_helper'

RSpec.describe EventUser, type: :model do
  it 'should belong to user' do
    expect { EventUser belong_to(:user) }
  end

  it 'should belong to event' do
    expect { EventUser belong_to(:event) }
  end
end
