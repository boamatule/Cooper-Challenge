Shoulda::Matchers.config do |config|
  config.integrate do |with|
    with.test_framwork :rspec
    with.library :rails
  end
end

RSpec.config do |config|
  config.inclede(Shoulda::Matchers::ActiveRecord, type: :model)
end
