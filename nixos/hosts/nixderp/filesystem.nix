{pkgs, ...}: {
  # mount file systems
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/7b564546-35c4-45e1-9ce3-901a0e02a7fd";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/E794-6BEE";
    fsType = "vfat";
    options = ["fmask=0022" "dmask=0022"];
  };

  fileSystems."/mnt/spiele" = {
    device = "/dev/disk/by-uuid/ac9bcbac-57fa-4200-b83e-26101c8ee479";
    fsType = "ext4";
  };

  fileSystems."/mnt/daten" = {
    device = "/dev/disk/by-uuid/86D08A37D08A2D8D";
    fsType = "ntfs";
  };

  fileSystems."/mnt/daten2" = {
    device = "/dev/disk/by-uuid/0024255224254BCA";
    fsType = "ntfs";
  };

  # mount network storage
  system.fsPackages = [pkgs.sshfs];
  system.activationScripts.sshKeys = ''cp /var/src/secrets/* /run/keys'';
  fileSystems.nasderp = {
    device = "root@nasderp.local:/mnt/user/";
    mountPoint = "/mnt/nasderp";
    fsType = "sshfs";
    options = [
      "allow_other" # non-root access
      "_netdev" # requires network to mount
      "x-systemd.automount" # mount on demand
      "identityFile=/run/keys/id_ed25519"
      # handle connection drops better
      "ServerAliveInterval=15"
      "reconnect"
      # uncomment this to figure out why mount is failing
      #"debug"
    ];
  };

  # mount swap file
  swapDevices = [
    {
      device = "/swapfile";
      size = 16 * 1024; # 16GB
    }
  ];

  #environment.systemPackages = with pkgs; [
  #	rclone
  #];
  #environment.etc."rclone-mnt.conf".text = ''
  #  [nasderp]
  #  type = sftp
  #  host = 192.168.0.27
  #  user = root
  #  key_file = /run/keys/id_ed25519
  #  shell_type = unix
  #  md5sum_command = md5sum
  #  sha1sum_command = sha1sum
  #'';
  #fileSystems.nasderp = {
  #  device = "nasderp:/mnt/user/";
  #  mountPoint = "/mnt/nasderp";
  #  fsType = "rclone";
  #  options = [
  #    "nodev"
  #    "nofail"
  #    "allow_other"
  #    "args2env"
  #    "config=/etc/rclone-mnt.conf"
  #  ];
  #};
}
