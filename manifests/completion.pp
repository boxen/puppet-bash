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
}
