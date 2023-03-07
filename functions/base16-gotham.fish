# base16-fish (https://github.com/tomyun/base16-fish)
# based on base16-shell (https://github.com/tinted-theming/base16-shell)
# Gotham scheme by Andrea Leopardi (arranged by Brett Jones)

function base16-gotham -d "Gotham"
  set color00 0c/10/14 # Base 00 - Black
  set color01 c2/31/27 # Base 08 - Red
  set color02 33/85/9e # Base 0B - Green
  set color03 ed/b4/43 # Base 0A - Yellow
  set color04 19/54/66 # Base 0D - Blue
  set color05 88/8c/a6 # Base 0E - Magenta
  set color06 2a/a8/89 # Base 0C - Cyan
  set color07 59/9c/ab # Base 05 - White
  set color08 0a/37/49 # Base 03 - Bright Black
  set color09 $color01 # Base 08 - Bright Red
  set color10 $color02 # Base 0B - Bright Green
  set color11 $color03 # Base 0A - Bright Yellow
  set color12 $color04 # Base 0D - Bright Blue
  set color13 $color05 # Base 0E - Bright Magenta
  set color14 $color06 # Base 0C - Bright Cyan
  set color15 d3/eb/e9 # Base 07 - Bright White
  set color16 d2/69/37 # Base 09
  set color17 4e/51/66 # Base 0F
  set color18 11/15/1c # Base 01
  set color19 09/1f/2e # Base 02
  set color20 24/53/61 # Base 04
  set color21 99/d1/ce # Base 06
  set colorfg $color07 # Base 05 - White
  set colorbg $color00 # Base 00 - Black

  function put_template; printf '\033]4;%d;rgb:%s\033\\' $argv; end;
  function put_template_var; printf '\033]%d;rgb:%s\033\\' $argv; end;
  function put_template_custom; printf '\033]%s%s\033\\' $argv; end;

  # 16 color space
  put_template 0  $color00
  put_template 1  $color01
  put_template 2  $color02
  put_template 3  $color03
  put_template 4  $color04
  put_template 5  $color05
  put_template 6  $color06
  put_template 7  $color07
  put_template 8  $color08
  put_template 9  $color09
  put_template 10 $color10
  put_template 11 $color11
  put_template 12 $color12
  put_template 13 $color13
  put_template 14 $color14
  put_template 15 $color15

  # 256 color space
  put_template 16 $color16
  put_template 17 $color17
  put_template 18 $color18
  put_template 19 $color19
  put_template 20 $color20
  put_template 21 $color21

  # foreground / background / cursor color
  put_template_var 10 $colorfg
  put_template_var 11 $colorbg
  put_template_custom 12 ";7" # cursor (reverse video)

  # set syntax highlighting colors
  set -U fish_color_autosuggestion 091f2e
  set -U fish_color_cancel -r
  set -U fish_color_command green #white
  set -U fish_color_comment 091f2e
  set -U fish_color_cwd green
  set -U fish_color_cwd_root red
  set -U fish_color_end brblack #blue
  set -U fish_color_error red
  set -U fish_color_escape yellow #green
  set -U fish_color_history_current --bold
  set -U fish_color_host normal
  set -U fish_color_match --background=brblue
  set -U fish_color_normal normal
  set -U fish_color_operator blue #green
  set -U fish_color_param 245361
  set -U fish_color_quote yellow #brblack
  set -U fish_color_redirection cyan
  set -U fish_color_search_match bryellow --background=091f2e
  set -U fish_color_selection white --bold --background=091f2e
  set -U fish_color_status red
  set -U fish_color_user brgreen
  set -U fish_color_valid_path --underline
  set -U fish_pager_color_completion normal
  set -U fish_pager_color_description yellow --dim
  set -U fish_pager_color_prefix white --bold #--underline
  set -U fish_pager_color_progress brwhite --background=cyan

  # remember current theme
  set -U base16_theme gotham

  # clean up
  functions -e put_template put_template_var put_template_custom
end
