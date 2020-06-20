# frozen_string_literal: true

namespace :ci do
  desc 'Scan repository for sensitives via git-secrets'
  task :secrets do
    if find_executable('git-secrets')
      sh 'git secrets --scan', verbose: false
    else
      warn 'git-secrets not installed.'
    end
  end
end
