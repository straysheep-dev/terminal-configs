# terminal-configs: profile buildout and maintenance

Terminal and shell configurations, broken down by use-case, then platform-specific files.

## Structure

This repo prefers use-case-based hierarchy (e.g. vm, redteam, server, etc.) over shells and terminals (bash, zsh, ghostty, GNOME).

```
# Example structure
.
├── vm/
│   └── vm_profile.sh
│   └── gnome.conf
│   └── README.md
├── redteam/
│   └── wireless_profile.sh
│   └── webapp_profile.sh
│   └── osint_profile.sh
│   └── README.md
├── server/
│   └── server_profile.sh
│   └── builder_profile.sh
│   └── README.md
├── generic/
│   └── default_profile.sh
│   └── README.md
└── palette.yaml      # Jinja2 filter, extract shared colors here, reference from each profile
└── bootsrap.sh/yaml  # Shell script or Ansible playbook
└── README.md
```

## Requirements

*Some existing files will need revised to adhere to this direction, and be more easily maintained.*

- Extract ANSI color codes into `palette.yaml` (name: escape_code).
- Each `*.sh` sources `palette.yaml`-derived vars, not hardcoded escapes (TODO).
- redteam profile: prepend `$ENGAGEMENT_ID` env var to prompt if set, fallback "NO-SCOPE-SET" in red/bold.
- No external deps beyond bash builtins + tput.
- Add a short comment header to each file explaining what host-role it targets, Ansible can install a host-role file later.

## Non-goals

- Don't add Ansible/Packer tasks, these are handled by their own roles and repos.
