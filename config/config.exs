# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :storix, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:storix, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# config :riak_core,
#   web_port: 8098,
#   handoff_port: 8099,
#   handoff_ip: '127.0.0.1',
#   ring_state_dir: 'ring_data_dir',
#   platform_data_dir: 'data',
#   platform_log_dir: './log',
#   sasl_error_log: './log/sasl-error.log',
#   sasl_log_dir: './log/sasl',
#   schema_dirs: ['priv'],
#   ring_creation_size: 4

config :riak_core,
  ring_state_dir: 'ring_data_dir',
  handoff_port: 8099,
  handoff_ip: '127.0.0.1',
  schema_dirs: ['priv'],
  ring_creation_size: 16,
  vnode_inactivity_timeout: 10000

config :lager,
  colored: true,
  error_logger_hwm: 5000

# config :lager,
#   handlers: [
#     lager_console_backend: [:debug, {:lager_default_formatter,
#     [:date, :time," [",:severity,"] (", :module, ".", :function, ") - ", :message, "\n"]}],
#   ]
# config :lager,
#   handlers: [
#     lager_console_backend: [:info, {:lager_default_formatter,
#     [:date, :time," [",:severity,"] (", :module, ".", :function, ") - ", :message, "\n"]}],
#   ]

config :sasl,
  errlog_type: :error

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
import_config "#{Mix.env}.exs"
