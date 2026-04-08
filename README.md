# 3x-ui package for YunoHost

This package allows you to install 3x-ui quickly and simply on a YunoHost server.

3x-ui is an advanced web panel for Xray-core with support for multiple protocols and inbound management.

## Status

This package is currently experimental.
It is intended as a solid starting point for local packaging, testing, and iteration before any catalog submission.

## Upstream project

- Website: https://github.com/MHSanaei/3x-ui
- Code: https://github.com/MHSanaei/3x-ui
- Documentation: https://github.com/MHSanaei/3x-ui/wiki

## Supported architectures

This package is configured for the following YunoHost architectures:

- amd64
- arm64
- armhf
- armel
- i386
- s390x

These map to upstream 3x-ui release archives for Linux.

## Package contents

- `manifest.toml`
- `conf/nginx.conf`
- `conf/systemd.service`
- `scripts/_common.sh`
- `scripts/install`
- `scripts/remove`
- `scripts/upgrade`
- `scripts/backup`
- `scripts/restore`
- `tests.toml`

## Install locally

```bash
yunohost app install ./3x-ui_ynh
```

During installation, choose:

- a domain;
- a path, default `/3x-ui`.

Then open the configured URL in your browser.

## Notes

This package uses upstream prebuilt release tarballs instead of the upstream install script.
That is generally closer to YunoHost packaging practices and makes upgrades more predictable.

You should still validate:

- fresh install;
- remove + reinstall;
- backup + restore;
- upgrade to a newer release.

## Development

Typical flow:

```bash
git init
git checkout -b testing
git add .
git commit -m "Initial 3x-ui YunoHost package"
```

Useful checks:

```bash
yunohost app install ./3x-ui_ynh
systemctl status 3x-ui
journalctl -u 3x-ui -n 100 --no-pager
```

## License

The packaging repository is released under the MIT License.
The upstream application keeps its own license.
