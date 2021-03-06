# frozen_string_literal: true

require 'brakeman'

namespace :ci do
  desc 'Scan the project via Brakeman for security vulnerabilities'
  task :brakeman do
    Brakeman.run app_path: '.', print_report: true
  end
end
