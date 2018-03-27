
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['EchwSVufEsVeYM7sF6N6purpW'], ENV['8aiMGZDisKdN6ojgVcUL5sCCYZxAI7UWLIfChvRrcZi7PK1Npp']
end