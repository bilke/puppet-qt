# Installs Qt via Homebrew.
#
# Usage:
#
#     include qt

class qt {
  include homebrew
  include xquartz

    default: {
      homebrew::formula { 'qt':
        before => Package['boxen/brews/qt'],
      }

      package { 'boxen/brews/qt':
        ensure  => '4.8.5-boxen2',
        install_options => [ '--HEAD' ],
        require => Class['xquartz'],
      }
    }
  }
}
