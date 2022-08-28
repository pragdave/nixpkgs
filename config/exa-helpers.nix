rec {
  _b = builtins;
  fixed = { code, offset }: [ (38+offset) 5 code ] ;
  _color = { code, offset }:
     if code < 8 then [ (30+code+offset) ] else fixed {code=code; offset=offset; };
    
  fg = code: _color { code=code; offset=0;  };
  bg = code: _color { code=code; offset=10; };

  bold      = [1];
  underline = [4];


  Default = [];

  Black   = 0;
  Maroon  = 1;
  Green   = 2;
  Olive   = 3;
  Navy    = 4;
  Purple  = 5;
  Teal    = 6;
  Silver  = 7;
  Grey    = 8;
  Red     = 9;
  Lime    = 10;
  Yellow  = 11;
  Blue    = 12;
  Fuchsia = 13;
  Aqua    = 14;
  White   = 15;
  Grey0   = 16;
  Grey3   = 232;
  Grey7   = 233;
  Grey11  = 234;
  Grey15  = 235;
  Grey19  = 236;
  Grey23  = 237;
  Grey27  = 238;
  Grey30  = 239;
  Grey35  = 240;
  Grey39  = 241;
  Grey42  = 242;
  Grey46  = 243;
  Grey50  = 244;
  Grey54  = 245;
  Grey58  = 246;
  Grey62  = 247;
  Grey66  = 248;
  Grey70  = 249;
  Grey74  = 250;
  Grey78  = 251;
  Grey82  = 252;
  Grey85  = 253;
  Grey89  = 254;
  Grey93  = 255;
  Grey100 = 231;

  name_to_code = {
    /* file kinds */
    filekinds_directory      = "di";
    filekinds_executable     = "ex";
    filekinds_normal         = "fi";
    filekinds_pipe           = "pi";
    filekinds_socket         = "so";
    filekinds_block_device   = "bd";
    filekinds_char_device    = "cd";
    filekinds_symlink        = "ln";
    filekinds_broken_symlink = "or";
                  /* perms */
    perms_user_read          = "ur";
    perms_user_write         = "uw";
    perms_user_execute_file  = "ux";
    perms_user_execute_other = "ue";
    perms_group_read         = "gr";
    perms_group_write        = "gw";
    perms_group_execute      = "gx";
    perms_other_read         = "tr";
    perms_other_write        = "tw";
    perms_other_execute      = "tx";
    perms_special_user_file  = "su";
    perms_special_other      = "sf";
    perms_attribute          = "xa";
                        /* sizes */
    vsize_number_byte = "nb";
    vsize_number_kilo = "nk";
    vsize_number_mega = "nm";
    vsize_number_giga = "ng";
    vsize_number_huge = "nh";
    size_unit_byte    = "ub";
    size_unit_kilo    = "uk";
    size_unit_mega    = "um";
    size_unit_giga    = "ug";
    size_unit_huge    = "uh";
    size_major        = "df";
    size_minor        = "ds";
                        /* user */
    users_user_you          = "uu";
    users_user_someone_else = "un";
    users_group_yours       = "gu";
    users_group_not_yours   = "gn";
                        /* link */
    links_normal          = "lc";
    links_multi_link_file = "lm";
                        /* git */
    git_new        = "ga";
    git_modified   = "gm";
    git_deleted    = "gd";
    git_renamed    = "gv";
    git_typechange = "gt";
                              /* misc */
    misc_punctuation         = "xx";
    misc_date                = "da";
    misc_inode               = "in";
    misc_blocks              = "bl";
    misc_header              = "hd";
    misc_symlink_path        = "lp";
    misc_control_char        = "cc";
    misc_broken_path_overlay = "bO";

  /* "sn" => self.set_number_style(pair.to_style()), */
  /* "sb" => self.set_unit_style(pair.to_style()), */
  };

  DefaultColors = {
    filekinds_directory      = fg(Blue) ++ bold;
    filekinds_executable     = fg(Green) ++ bold;
    filekinds_normal         = Default;
    filekinds_pipe           = fg(Yellow);
    filekinds_socket         = fg(Red) ++ bold;
    filekinds_block_device   = fg(Yellow) ++ bold;
    filekinds_char_device    = fg(Yellow) ++ bold;
    filekinds_symlink        = fg(Aqua);
    filekinds_broken_symlink = fg(Red);
    perms_user_read          = fg(Yellow) ++ bold;
    perms_user_write         = fg(Red) ++ bold;
    perms_user_execute_file  = fg(Green) ++ bold ++ underline;
    perms_user_execute_other = fg(Green) ++ bold;
    perms_group_read         = fg(Yellow);
    perms_group_write        = fg(Red) ++ bold;
    perms_group_execute      = fg(Green);
    perms_other_read         = fg(Yellow);
    perms_other_write        = fg(Red);
    perms_other_execute      = fg(Green);
    perms_special_user_file  = fg(Purple);
    perms_special_other      = fg(Purple);
    perms_attribute          = Default;
    vsize_number_byte        = fg(118);
    vsize_number_kilo        = fg(190);
    vsize_number_mega        = fg(226);
    vsize_number_giga        = fg(220);
    vsize_number_huge        = fg(214);
    size_unit_byte           = fg(Green);
    size_unit_kilo           = fg(Green);
    size_unit_mega           = fg(Green);
    size_unit_giga           = fg(Green);
    size_unit_huge           = fg(Green);
    size_major               = fg(Green) ++ bold;
    size_minor               = fg(Green);
    users_user_you           = fg(Yellow) ++ bold;
    users_user_someone_else  = Default;
    users_group_yours        = fg(Yellow) ++ bold;
    users_group_not_yours    = Default;
    links_normal             = fg(Red) ++ bold;
    links_multi_link_file    = fg(Red) ++ bg(Yellow);
    git_new                  = fg(Green);
    git_modified             = fg(Blue);
    git_deleted              = fg(Red);
    git_renamed              = fg(Yellow);
    git_typechange           = fg(Purple);
    misc_punctuation         = fg(244);
    misc_date                = fg(Blue);
    misc_inode               = fg(Purple);
    misc_blocks              = fg(Aqua);
    misc_header              = Default ++ underline;
    misc_symlink_path        = fg(Aqua);
    misc_control_char        = fg(Red);
    misc_broken_path_overlay = Default ++ underline;
  };

  to_ls_string = attrs:
    let
      value_as_attr_list = values: (_b.concatStringsSep ";" (_b.map _b.toString(values)));
      mapped_as_attrs    = _b.mapAttrs (name: value: (_b.getAttr name name_to_code) + "=" + (value_as_attr_list value)) attrs;
      mapped_as_list     = _b.attrValues mapped_as_attrs;
    in
      (_b.concatStringsSep ":" mapped_as_list)
    ;

  update_colors = updates: to_ls_string (DefaultColors // updates);
}
