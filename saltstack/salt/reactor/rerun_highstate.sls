#Re-Run HighState when config file is modified
Run_HighState:
  local.state.apply:
    - tgt: {{ data['id'] }}
