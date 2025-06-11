{...}: {
  # Configure console keymap
  console = {
    earlySetup = true; # Set virtual console in initrd
    useXkbConfig = true; # Configure the virtual console keymap from the xserver settings
  };
}
