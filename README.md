# VirtualBet

Virtual-credit sports betting and casino simulator. No real money.

The full source is packed in `app.tar.gz`; the `Dockerfile` unpacks and builds
it, and `render.yaml` tells Render how to run it (web service + 1 GB disk for
the database). To update the site, replace `app.tar.gz` with a newer one.

## Settings on Render

* `ADMIN_USERS` – comma-separated VirtualBet usernames allowed into the admin area
  (Account → Admin: Bonus Buy), e.g. `ADMIN_USERS=cameron`. Nobody else can see or use it.
