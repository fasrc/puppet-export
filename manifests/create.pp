# Define: export::create
# creates entries in /etc/exports

define export::create (
  $clients = [],
  $ensure  = 'present'
) {
  if $ensure != 'absent' {
    $clientline = join(reverse(sort($clients)),' ')
    $line       = "${name} ${clientline}\n"

    concat::fragment { $name:
      target  => '/etc/exports',
      content => $line
    }
  }
}
