# BASH Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-bash.png)](https://travis-ci.org/boxen/puppet-bash)

Installs bash and makes it your default shell. For justice.

## Usage

```puppet
include bash

# include bash completion package as well
include bash::completion
```

# Required Puppet Modules

* `boxen`
* `homebrew`
* `osx`
* `stdlib`

## Developing

Write code.

Write code. Run `script/cibuild`. Send Pull Requests.

