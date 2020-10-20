# Check For Stashes on Branch

This is a simple `post-checkout` git hook
that checks for stashes that may be on the current branch.

Git hooks aren't committed to the repo,
so you'll need to install this hook
in every repo where you want it,
and on every collaborator's machine.

## Installation

[Automated installation](#automated-installation)
is simplest,
but if you already have a `post-checkout` git hook,
you'll need to
[install the hook manually](#manual-installation).

### Automated installation

You'll need [curl](https://curl.haxx.se/) installed to run this command.

`cd` into your repo's root folder:

```bash
cd /path/to/your/repo/
```

Then run this command:

```bash
bash <(curl -s https://raw.githubusercontent.com/imnotashrimp/stashed-on-branch/master/install.sh)
```

### Manual installation

1. Copy the
  [post-checkout](https://raw.githubusercontent.com/imnotashrimp/stashed-on-branch/master/post-checkout)
  script to your repo at `.git/hooks/post-checkout`.
2. Make the script executable by running `chmod +x /your/repo/path/.git/hooks/post-checkout`.

## Try it out

1. After installation, create a temporary branch:

    ```shell
    git checkout -b DELETEME
    ```

2. Change a file, and then stash the changes:

    ```shell
    git stash
    ```

3. Switch to a different branch:

    ```shell
    git checkout master
    ```

4. And then switch back to the temporary branch:

    ```shell
    git checkout DELETEME
    ```

    If you see a list of stashes from the branch,
    everything's good.
    If not, double-check that the hook was installed in the repo at `.git/hooks/post-checkout`.

5. When you're done,
  switch to another branch and delete the test branch:

    ```shell
    git checkout master
    git branch -d DELETEME
    ```
