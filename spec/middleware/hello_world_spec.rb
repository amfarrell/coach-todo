require 'spec_helper'

describe HelloWorld, type: :request do
  it 'returns 200 when visiting hello world' do
    get '/hello/world'

    expect(response.status).to eq(200)
    expect(response.body).to include("hello world")
  end
end
