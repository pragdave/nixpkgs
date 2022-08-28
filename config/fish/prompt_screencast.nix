''
    set last_status $status

    echo

    set_color '#69ddaa'
    printf "%s\n" (string match -r '(?!/)[^/]+/[^/]+$' (pwd))


    set_color -o brown
    echo -n '$ '

    set_color normal
''
