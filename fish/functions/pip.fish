function pip
    if test (count $argv) -gt 0; and string match -q "*install*" "$argv[1]"
        set args $argv
        set args $args[2..(count $args)]
        command pip $argv[1] $args --break-system-packages
    else
        command pip $argv
    end
end
