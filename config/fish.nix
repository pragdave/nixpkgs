{ pkgs, ... }:
let
  getEnv = builtins.getEnv;
in
{
  enable = true;
   
  functions = {
    fish_greeting = "";
    fish_user_key_bindings = ''
      # OS X
      bind \e\[1\;5A history-token-search-backward
      bind \e\[1\;5B history-token-search-forward
      # Unix:  fn up/down
      bind \e\[5~ history-token-search-backward
      bind \e\[6~ history-token-search-forward
      # Unix:  Microsoft kb:  shift up/down
      bind \e\[1\;2A history-token-search-backward
      bind \e\[1\;2B history-token-search-forward
    '';

    fish_prompt =  
      if getEnv("TTYREC_SESSION") ? false then
        import ./fish/prompt_ttyrec.nix
      else if getEnv("SCREENCAST") ? false then
        import ./fish/prompt_screencast.nix
      else
        import ./fish/prompt_default.nix;

  };

  plugins = [
  {
    name = "foreign-env";
    src = pkgs.fetchFromGitHub {
      owner = "oh-my-fish";
      repo = "plugin-foreign-env";
      rev = "dddd9213272a0ab848d474d0cbde12ad034e65bc";
      sha256 = "er1KI2xSUtTlQd9jZl1AjqeArrfBxrgBLcw5OqinuAM=";
    };
  }
  ];

  shellInit = ''
      set normal  (set_color normal)
      set magenta (set_color magenta)
      set yellow  (set_color yellow)
      set green   (set_color green)
      set red     (set_color red)
      set gray    (set_color brown)

      # Fish git prompt
      set __fish_git_prompt_showdirtystate 'yes'
      set -e __fish_git_prompt_showstashstate
      set __fish_git_prompt_showuntrackedfiles 'yes'
      set -e __fish_git_prompt_showupstream
      set __fish_git_prompt_color_branch '#088'
      set __fish_git_prompt_color_flags '#088'
      set __fish_git_prompt_color_upstream_ahead green
      set __fish_git_prompt_color_upstream_behind red

      # Status Chars
      set __fish_git_prompt_char_dirtystate '⚡'
      set __fish_git_prompt_char_stagedstate '→'
      set __fish_git_prompt_char_untrackedfiles '☡'
      set __fish_git_prompt_char_stashstate '↩'
      set __fish_git_prompt_char_upstream_ahead '+'
      set __fish_git_prompt_char_upstream_behind '-'

      ${ if getEnv("SCREENCAST") ? false then
           "set fish_color_search_match --background=blue"
        else
           ""
      }

      alias ls='exa -a'
      fenv source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
  '';
}


