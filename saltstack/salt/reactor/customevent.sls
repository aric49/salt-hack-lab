# Install_Simple_Package:
#   local.pkg.install:
#     - tgt: 'minion1'
#     - arg:
#       - cowsay

Run_HighState:
  local.state.apply:
    - tgt: "minion1"
