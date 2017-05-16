require 'spec_helper'

describe HelloWorld do
  it 'returns 200 when visiting hello world' do
    get '/hello_world'
    expect(response.status).to eq(200)
  end
end
