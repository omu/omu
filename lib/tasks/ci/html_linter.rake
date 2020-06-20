# frozen_string_literal: true

namespace :ci do
  desc 'Check HTML files via html_lint'
  task :html_linter do
    sh "yarn exec htmlhint --config .htmlhintrc 'app/views/**/*.html.erb'", verbose: false
  end
end
