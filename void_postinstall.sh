#!/bin/bash
main()
{ 
  if (("$UID" != "0"));then
    echo "You must be root to run this program.";
  else
    xbps-install -Su;
    xbps-install bspwm polybar vim zsh lxterminal firefox rofi picom tar unzip scrot ranger p7zip noto-fonts-ttf nerd-fonts nerd-fonts-otf nerd-fonts-ttf curl git NetworkManager feh sxhkd font-awesome font-material-design-icons-ttf dejavu-fonts-ttf freshplayerplugin xorg-minimal xbacklight ttf-material-icons pulseaudio pavucontrol;
    sleep 2;
    git clone https://github.com/yzkuxp/dotfiles.git /home/$USER/dotfiles;
    sleep 1;
    mv /home/$USER/dotfiles/bspwm /home/$USER/.config/bspwm && chmod +x /home/$USER/.config/bspwm/bspwmrc;
    mv /home/$USER/dotfiles/sxhkd /home/$USER/.config/sxhkd && chmod +x /home/$USER/.config/sxhkd/sxhkdrc;
    mv /home/$USER/dotfiles/polybar /home/$USER/.config/polybar;
    echo "sxhkd &\nexec bspwm" >> /home/$USER/.xinitrc;
    echo "Now you can run startx if you want.";
  fi
}

main
