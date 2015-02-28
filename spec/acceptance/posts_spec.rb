require "spec_helper"

describe Endpoints::Posts do
  include Committee::Test::Methods
  include Rack::Test::Methods

  def app
    Routes
  end

  def schema_path
    "./docs/schema.json"
  end

  before do
    @post = Post.create(title: 'Hello')

    # temporarily touch #updated_at until we can fix prmd
    @post.updated_at
    @post.save
  end

  describe 'GET /posts' do
    it 'returns correct status code and conforms to schema' do
      get '/posts'
      expect(last_response.status).to eq(200)
      assert_schema_conform
    end
  end

  describe 'POST /posts' do
    it 'returns correct status code and conforms to schema' do
      header "Content-Type", "application/json"
      post '/posts', MultiJson.encode({title: 'Hello'})
      expect(last_response.status).to eq(201)
      assert_schema_conform
    end
  end

  describe 'GET /posts/:id' do
    it 'returns correct status code and conforms to schema' do
      get "/posts/#{@post.uuid}"
      expect(last_response.status).to eq(200)
      assert_schema_conform
    end
  end

  describe 'PATCH /posts/:id' do
    it 'returns correct status code and conforms to schema' do
      header "Content-Type", "application/json"
      patch "/posts/#{@post.uuid}", MultiJson.encode({})
      expect(last_response.status).to eq(200)
      assert_schema_conform
    end
  end

  describe 'DELETE /posts/:id' do
    it 'returns correct status code and conforms to schema' do
      delete "/posts/#{@post.uuid}"
      expect(last_response.status).to eq(200)
      assert_schema_conform
    end
  end
end
