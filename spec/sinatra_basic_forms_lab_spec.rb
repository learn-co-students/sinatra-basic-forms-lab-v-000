describe App do

  describe 'GET /' do
    
    it 'sends a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it 'renders welcome' do 
      visit '/'
      expect(page).to have_link("Click Here To List A Puppy")
    end
  end

  describe 'GET /NEW' do 
    it 'sends a 200 status code' do
      get '/new'
      expect(last_response.status).to eq(200)
    end

    it 'renders the form' do
      visit '/new'
      expect(page).to have_selector("form")
      expect(page).to have_field(:name)
      expect(page).to have_field(:breed)
      expect(page).to have_field(:age)
    end
  end

  describe 'POST /' do
    it "displays the puppy" do 
      visit '/new'

     
    end
  end

  
end