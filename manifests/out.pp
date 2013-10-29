class conditionals::out {
  $text = $::operatingsystem ? {
    'centos' => "This is a centos box (out selector test)",
    'debian' => "This is a debian box (out selector test)",
    default => "This is an unknown box (out selector test)",
  }

  file { '/tmp/os' :
    ensure = file,
    content => $text,
  }
}
