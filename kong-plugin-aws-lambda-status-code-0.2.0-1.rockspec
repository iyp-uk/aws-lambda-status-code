package = "kong-plugin-aws-lambda-status-code"  -- TODO: rename, must match the info in the filename of this rockspec!
                                                -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.2.0-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.1.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- This is the name to set in the Kong configuration `custom_plugins` setting.
local pluginName = "aws-lambda-status-code"

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git://github.com/iyp-uk/aws-lambda-status-code",
  tag = "0.2.0"
}

description = {
  summary = "Kong custom plugin for changing AWS Lambda response status code based on a property in the body",
  homepage = "https://github.com/iyp-uk/aws-lambda-status-code",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".v4"] = "kong/plugins/"..pluginName.."/v4.lua",
  }
}
