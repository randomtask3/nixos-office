{
  fileSystems."/home/morpheus/Matrix/HDD-Storage" = { 
    device = "/dev/disk/by-label/Nebuchadnezzar-hdd";
    fsType = "btrfs";
    #options = [ "uid=1000" "gid=1000" ];
  };
}