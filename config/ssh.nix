{
  enable = true;
  /* options.startAgent = true; */
  matchBlocks = {
    "nuc" = {
      hostname = "192.168.0.99";
      user = "dave";
    };


    "llvm" = {
      hostname = "127.0.0.1";
      port = 2222;
      user = "dave";
    };

    "nas nas1 synology" = {
      hostname = "192.168.86.158";
      port = 19022;
      user = "pragdave";
    };
  };
}

