# Public: Install bash-completion
#
# Usage:
#
#   include bash::completion

class bash::completion {
  include homebrew

  package { 'bash-completion':
    ensure => latest
  }

  boxen::env_script { "bash_completion":
    content  => template('bash/bash_completion.erb'),
    priority => 'lowest',
  }
}
