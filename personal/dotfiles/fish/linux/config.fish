source (status dirname)/../shared/config.fish
# alias code="code-oss"

# All handled by Nix
#fish_add_path $HOME/.cargo/bin
#fish_add_path $HOME/.yarn/bin

if status is-login 

    #if test -z "$XDG_RUNTIME_DIR"
    #  set runtime_dir "/tmp/"(id -u)"-xdg-runtime-dir"
    #  mkdir "$runtime_dir"
    #  chmod 0700 "$runtime_dir"
    #  set -gx XDG_RUNTIME_DIR $runtime_dir       
    #end

    #sway --my-next-gpu-wont-be-nvidia &

    # All handled by Nix
    #dbus-launch pipewire &
    #dbus-launch pipewire-pulse &
    #dbus-launch pipewire-media-session &
end