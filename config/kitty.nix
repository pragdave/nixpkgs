{ pkgs, ... }:
{
    enable = true;
    font = {
      package = pkgs.fira-code;
      name = "FiraCode Nerd Font";
      size = 14;
    };
    keybindings = {
      "ctrl+left"   = "neighboring_window left";
      "ctrl+right"  = "neighboring_window right";
      "ctrl+up"     = "neighboring_window up";
      "ctrl+down"   = "neighboring_window down";
      "kitty_mod+f" = "move_window_forward";
      "kitty_mod+b" = "move_window_backward";
      "kitty_mod+`" = "move_window_to_top";
      "ctrl+alt+s"  = "goto_layout stack";
      "ctrl+alt+p"  = "last_used_layout";
     }; 

    extraConfig = ''
      cursor #cc99cc
      cursor_stop_blinking_after 15.0
      initial_window_width  1280
      initial_window_height 800    
      draw_minimal_borders no

      active_border_color   #882288
      inactive_border_color #555555
      inactive_text_alpha   0.7

      tab_bar_style powerline
      active_tab_foreground   #626
      active_tab_background   #eae
      active_tab_font_style   bold
      inactive_tab_foreground #646
      inactive_tab_background #b7b
      inactive_tab_font_style normal
      tab_bar_background #949

      background            #101010
      foreground            #f0f0f0
      cursor                #bbbbbb
      selection_background  #453a39
      color0                #000000
      color8                #c18131
      color1                #ff605a
      color9                #f58b7f
      color2                #b1e869
      color10               #dcf88f
      color3                #ead89c
      color11               #eee5b2
      color4                #5da9f6
      color12               #a5c7ff
      color5                #e86aff
      color13               #ddaaff
      color6                #82fff6
      color14               #b6fff9
      color7                #ded9ce
      color15               #fefffe
      selection_foreground #171717

      shell /Users/dave/.nix-profile/bin/fish

    '';
}
