function dns
    sudo pkill cloudflared
    sudo launchctl kickstart system/com.cloudflare.cloudflared;
end
