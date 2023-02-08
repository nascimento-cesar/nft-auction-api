unless Rails.env.production?
  Dotenv.load('.env')
end