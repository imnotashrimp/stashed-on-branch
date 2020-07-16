# Check For Stashes on Branch

This is a simple `post-checkout` git hook
that checks for stashes that may be on the current branch.

Git hooks aren't committed to the repo,
so you'll need to install this hook
in every repo where you want it,
and on every collaborator's machine.

## Automated installation

You'll need [curl](https://curl.haxx.se/) installed to run this command.

`cd` into your repo's root folder
and run this command:

```bash
bash <(curl -s https://raw.githubusercontent.com/imnotashrimp/stashed-on-branch/master/install.sh)
```

## Manual installation

Copy the [post-checkout] script
to your repo at `.git/hooks/post-checkout`.
