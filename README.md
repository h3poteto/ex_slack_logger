# ExSlackLogger
[![Hex.pm](https://img.shields.io/hexpm/v/ex_slack_logger)](https://hex.pm/packages/ex_slack_logger)
[![Hex.pm](https://img.shields.io/hexpm/dt/ex_slack_logger)](https://hex.pm/packages/ex_slack_logger)
[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)


ExSlackLogger is a logger backend module for Slack.

## Installation

Add `ex_slack_logger` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_slack_logger, "~> 0.1.0"}
  ]
end
```

## Usage
At frist, add ExSlackLogger as logger backend in your `config.exs`.

```elixir
config :logger, backends: [:console, ExSlackLogger]
```

Next, configure logger backend.

```elixir
config :logger, ExSlackLogger,
  level: :error,
  hook_url: {:system, "SLACK_WEBHOOK_URL"},
  channel: "#your_slack_channel_name",
  username: "slack_user_name"
```

After that, you can receive application log in your slack channel.

## License
The software is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
