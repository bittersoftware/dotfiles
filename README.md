### Tools:

-  ### Neovim:
    -  Based on [kickstart](https://github.com/nvim-lua/kickstart.nvim)
    -  Refactor from there to be more modular
    -  Add (almost) only necessary plugins
-  ### Zellij:
    -  Source: [Zellij](https://github.com/zellij-org/zellij)
    -  Use custom theme that hides key shortcuts from screen
-  ### LF:
    -  Source: [LF](https://github.com/gokcehan/lf)
    -  Use custom icons. See [icons file](https://github.com/bittersoftware/dotfiles/blob/main/LF_ICONS)
    -  Save icons file in your `.config` directory
    -  Load icons file in your terminal config (ex: .zshrc)
      ```
           # Add icons to lf
           [ -f ~/.config/LF_ICONS ] && {
                LF_ICONS="$(tr '\n' ':' <~/.config/LF_ICONS)" \
                    && export LF_ICONS
      }
      ```
    
   
