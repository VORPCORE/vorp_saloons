# vorp_saloons
Official VORP script for Saloons

## Installation
1. Download the repository
2. Add to `server-data/resources` folder
3. Add to resources.cfg `ensure vorp_saloons`

## How it works
Setup `config.lua` with jobs, craft locations and add unique meals for each saloon, as well common meals.

Players with specific job can open storages and craft locations in saloons with according job.

Unique meals are only craftable in saloons by players with the required job.

Inventories have 5000 slots. If you want to reduce it - change line 26 in `server.lua`
