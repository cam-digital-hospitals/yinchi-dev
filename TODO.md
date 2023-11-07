# To-do list

### Coding style

- [ ] Deal with common files across submodules
    - Duplicating files is not good: copies may diverge
    - A separate 'common' submodule may cause problems in VSCode unless it knows where to find the files
    - Set up proper Python packaging?  (So that all Python modules can find `digital-hospitals.common-api`)
        - See: https://packaging.python.org/en/latest/tutorials/packaging-projects/
- [ ] **Database**: Switch to named parameters for better code readability
    - https://docs.python.org/3/library/sqlite3.html#sqlite3.Cursor.execute

### Frontend

- **View Single Scenario Results**
    - [ ] Add "Download config file" column
    - Add tool tip to "Progress" column header (on a ? icon) with text "Replications completed / Total replications"
- **Single Scenario Results** pages
    - [ ] Complete code to populate plot grids (e.g. Util. by resource)
    - [ ] Select default plot widths based on initial viewport size
- [ ] **Pages** and **REST API** implementation for **Multi-Scenario Analyses**
- [ ] Dash AG Grid component for showing sim results --  add auto-refresh with `dcc.Interval`
    - Add "Reloading in `N`..." message
- Use client-side callbacks where possible: https://dash.plotly.com/clientside-callbacks
    - [ ] Server status
    - [ ] Single-scenario results page
    - Add to this list as new pages are created
- Authentication
    - [ ] Only admin should be able to clear the database
    - [ ] Need to set up `https` reverse proxy on server but Dash service only needs to understand `http` (??? check this)
    - https://dash.plotly.com/authentication
    - [ ] Salt and hash stored passwords on server side


### Simulation

- [ ] Implement simulation runs properly, with confidence intervals
- [ ] Implement initial simulation state
    - Current WIP code is in [yinchi: cuh-dashboards2/mock_specimens/](https://github.com/yinchi/cuh-dashboards2/tree/main/mock_specimens)
- [ ] Implement travel time logic
    - Randomly assign cut-up room for the cut-up stage

### New modules

- [ ] Sensors
    - For live updates, convert project from `dash` to `dash_extensions` and use `dash_extensions.WebSocket` (see https://www.dash-extensions.com/components/websocket)
        - Sensor server uses HTTP for historical data and WebSockets for live feeds
        - Use public URI for sensor server (each submodule should be host-agnostic)
- [ ] BIM Model
    - Use [Dash Cytoscape](https://dash.plotly.com/cytoscape) or similar package to implement UI
    - From network of locations, where edge weights represent travel times, compute shortest paths given set of enabled/disabled edges.
    - Shortest path output should then be usable as input to simulation.