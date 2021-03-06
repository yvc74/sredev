use Mix.Config

# For production, we configure the host to read the PORT
# from the system environment. Therefore, you will need
# to set PORT=80 before running your server.
#
# You should also configure the url host to something
# meaningful, we use this information when generating URLs.
#
# Finally, we also include the path to a manifest
# containing the digested version of static files. This
# manifest is generated by the mix phoenix.digest task
# which you typically run after static files are built.
config :sre, Sre.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "beta.sre.com", port: 443],
  cache_static_manifest: "priv/static/manifest.json"

# Do not print debug messages in production
config :logger, level: :warn, backends: [Rollbax.Logger]

# We configure the Rollbax.Logger backend.
config :logger, Rollbax.Logger,
  level: :error

config :sre,
  photo_cdn: "https://sre-production.imgix.net/",
  from_email: "qa+info@knledg.com",
  to_email: "qa+info@knledg.com",
  ip_location_key: "SAKB68XT85854ETM999Z",
  office_emails: %{
    ca: "qa+sandiego@knledg.com",
    hi: "qa+hawaii@knledg.com",
    az: "qa+arizona@knledg.com",
  }

config :ueberauth, Ueberauth,
  providers: [
    auth0: {Ueberauth.Strategy.Auth0, [
      callback_url: "https://beta.sre.com/auth/auth0/callback"
    ]}
  ]

config :sre, Sre.Mailer,
  adapter: Bamboo.SendgridAdapter,
  api_key: System.get_env("SENDGRID_API_KEY")
