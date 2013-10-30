class conditionals::case {
  case $::operatingsystem {
    'centos': { $text = "This is a centos box(case test).\n"   }
    'debian': { $text = "This is a debian box(case test).\n"   }
    default : { $text = "This is an unknown box(case test).\n"   }
  }

  file { '/tmp/os':
    ensure => file,
    content => $text,
  }
}
