# TailScale Service Manager

The Tailscale Service Manager(TailService) script is a helper script for using Tailscale on a Linux system.  The script provides a menu interface with several options for using Tailscale.  I find this to be easier than typing them into terminal every time I use Tailscale.

In the past I used a couple of Gnome Extensions that provided a way to manage the service without the need to terminal commands.  Both of the Gnome Extensions I used stopped working one day and I created this script to make using Tailscale easier.  The script runs in a loop for convenience and can be exited with menu option 5 or ctrl + c.

## How to use

* Requirements:
    + Linux
    + Tailscale Installed.  Install instructions can be found here: https://tailscale.com/kb/1031/install-linux
    + Be logged into Tailscale via the installed app.
        - Instructions are in the tailscale link above
        - Or you can used the following quick reference
            * sudo tailscale up, Follow instructions to login with link provided.
            * Run "sudo tailscale set --operator=<username>" . This will the user specified to operate tailscale.

* You will need to exit line 61 in the script if you want to use the exit node option.  You will need to remove, <Exit Node IP Here> and enter the IP address in your Tailscale Admin console for the exit node.

1. Run the script ./TailService.sh 
2. Select an option from the menu
3. The script can be ended my using option 5 or ctrl + c.  The script will loop otherwise.  This allows convenient future access to the options.


## Support

If you happen to need help or experience an issue you can email me at velvetnull@proton.me.

I am the sole maintainer and contributor to this project.