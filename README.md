# nra

*Nanai's pkgbuilds Repository for Asahi (but not limited about asahi)*

---

## unproceed

- `mesa-asahi-edge`: this depends kernel, so `depends` on kernel
- unify few things
  - indents
  - PKGBUILD's variables structure
- add script to clean up unneeded files (means files of ignored by git)
- change ways to that extract patches from Asahi's repo, and apply to upstream
- make ci to automatically follow updates of package
- test where's dependencies actually meaningful of environment
- follow [guidelines](https://wiki.archlinux.org/title/Category:Arch_package_guidelines)

## packages status

| name                  | status                      |
| --------------------- | --------------------------- |
| `alsa-ucm-conf-asahi` | :question:      untested    |
| `ane-modules-git`     | :construction:  working     |
| `asahi-audio`         | :question:      untested    |
| `bankstown`           | :question:      untested    |
| `graphite-gtk-theme`  | :thinking:      may working |
| `linux-asahi`         | :construction:  working     |
| `linux-asahi-custom`  | :construction:  working     |
| `m1n1`                | :question:      untested    |
| `mesa-asahi-edge`     | :question:      untested    |
| `speakersafetyd`      | :question:      untested    |
| `tela-icon-theme`     | :thinking:      may working |
| `uboot-asahi`         | :question:      untested    |
