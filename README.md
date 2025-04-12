# mysql pillar

A general MySQL instance to use locally with Unum services that expect an external MySQL instance

# Requirements

- A Mac (Linux might work, not sure)
- Apple Xcode: https://developer.apple.com/xcode/
- Homebrew: https://brew.sh/
- VS Code: https://code.visualstudio.com/
- Docker Desktop: https://docs.docker.com/desktop/
  - After you install
  - Go into Settings -> Kubernetes -> Enable Kubernetes
  - Restart Docker Desktop (it'll take awhoel for Kuberentes to be ready)
- kubectl - https://formulae.brew.sh/formula/kubernetes-cli
- kubectx - https://formulae.brew.sh/formula/kubectx
- Tilt - https://formulae.brew.sh/formula/tilt

# Run

- `make up` - Starts MySQL by firing up tilt, hit space to see the GUI, maps mysql data dir to data/ here, ctrl-c to exit
- `make down` - Cleans everything up
- `make client` - Connects to mysql on server (password: local)

# Access

Make sure you `make up` before trying to access MySQL or starting any k8s service needs it.

From within kubernetes, host (DNS) is `db.mysql` at port `3306`.

From your Mac, host is `localhost` at port `3306`.
