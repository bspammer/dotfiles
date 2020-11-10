function fish_prompt
	test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"
    set GIT_BRANCH " "(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    test GIT_BRANCH = " ()"; and set GIT_BRANCH ""

    # Main
    echo -n (set_color cyan)(prompt_pwd)(set_color purple)"$GIT_BRANCH" (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end
