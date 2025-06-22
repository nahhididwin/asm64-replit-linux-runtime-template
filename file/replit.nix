{ pkgs }: {
  deps = [
    pkgs.nasm
    pkgs.binutils # để dùng ld
  ];
}
