# Require all Ruby files in the core_extensions directory
Dir[Rails.root.join('lib', 'extensions', '*.rb')].each { |f| require f }

# Apply the monkey patches
# Array.include CoreExtensions::Array
# Hash.include CoreExtensions::Hash
