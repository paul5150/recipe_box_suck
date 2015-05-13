ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do
    Ingredient.all.each() do |ingredient|
      ingredient.destroy()
    end
  end
end
