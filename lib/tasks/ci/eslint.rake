# frozen_string_literal: true

namespace :ci do
  desc 'Check JavaScript files via eslint'
  task :eslint do
    sh 'yarn run lint', verbose: false
  end
end
