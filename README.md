What is this?
-------------

This is a simple defined type that can be used to populate /etc/exports.

The type depends on functions in [puppet's stdlib](https://github.com/puppetlabs/puppetlabs-stdlib).

Usage
-----

Declared like so:

    export::create { '/net/foo':
      clients => [
      'node01(rw,no_root_squash)',
      'node02(ro,root_squash)',
      '*(rw,root_squash)'
      ]
    }

Or wrap the type with `create_resources`:

   `create_resources('export::create',{'/net/foo' => { 'clients' => ['node01(rw,no_root_squash)', 'node02(ro,root_squash)', '*(rw,root_squash)' ]}})`
