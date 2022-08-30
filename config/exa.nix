/* we return a string that can be assigned to the environment 
 * variable EXA_COLORS 
 */


with (import ./exa-helpers.nix);

  update_colors {
    users_user_you           = fg(148);
    users_user_someone_else  = fg(136);
 /* users_group_yours        = fg(Yellow) ++ bold; */
 /* users_group_not_yours    = Default; */

    filekinds_directory      = fg(147);
    filekinds_executable     = fg(Green);
    filekinds_normal         = fg(159);
 /* filekinds_pipe           = fg(Yellow); */
 /* filekinds_socket         = fg(Red) ++ bold; */
 /* filekinds_block_device   = fg(Yellow) ++ bold; */
 /* filekinds_char_device    = fg(Yellow) ++ bold; */
 /* filekinds_symlink        = fg(Aqua); */
 /* filekinds_broken_symlink = fg(Red); */

    perms_user_read          = fg(113);
    perms_user_write         = fg(113);
    perms_user_execute_file  = fg(113) ++ underline;
    perms_user_execute_other = fg(Green);

    perms_group_read         = fg(107);
    perms_group_write        = fg(107);
    perms_group_execute      = fg(107);

    perms_other_read         = fg(101);
    perms_other_write        = fg(101);
    perms_other_execute      = fg(101);

    perms_special_user_file  = fg(Purple);
    perms_special_other      = fg(Purple);
    perms_attribute          = fg(124);

    vsize_number_byte        = fg(Grey50);
    vsize_number_kilo        = fg(Grey66);
    vsize_number_mega        = fg(Grey74);
    vsize_number_giga        = fg(195);
    vsize_number_huge        = fg(225);

    size_unit_byte           = fg(Grey50);
    size_unit_kilo           = fg(Grey58);
    size_unit_mega           = fg(Grey78);
    size_unit_giga           = fg(195);
    size_unit_huge           = fg(225);
 /* size_major               = fg(Green) ++ bold; */
 /* size_minor               = fg(Green); */

 /* links_normal             = fg(Red) ++ bold; */
 /* links_multi_link_file    = fg(Red) ++ bg(Yellow); */

 /* git_new                  = fg(Green); */
 /* git_modified             = fg(Blue); */
 /* git_deleted              = fg(Red); */
 /* git_renamed              = fg(Yellow); */
 /* git_typechange           = fg(Purple); */

    misc_date                = fg(74);
 /* misc_punctuation         = fg(244); */
 /* misc_inode               = fg(Purple); */
 /* misc_blocks              = fg(Aqua); */
 /* misc_header              = Default ++ underline; */
 /* misc_symlink_path        = fg(Aqua); */
 /* misc_control_char        = fg(Red); */
 /* misc_broken_path_overlay = Default ++ underline; */
  }

