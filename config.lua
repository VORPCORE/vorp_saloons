Config = {
    defaultlang = "en",
    Align = "center",

    Key = 0x760A9C6F,        --[G]

    Blipsprite = 1879260108, --common sprite

    BlipsActive = true,      --set whether Blips should shown on map

    Locations = {
        --Valentine
        Smithfields = {
            Job = "smithfields",

            Blipcoords = { x = -313.17, y = 804.77, z = 118.98 }, -- Position for blip on map
            Name = "Smithfield's",

            CraftLocation = { -- Position for crafting for saloon workers
                name = "Smithfield's cooker",
                id = 'smithfields',
                Job = { "smithfields" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                x = -313.99,
                y = 807.50,
                z = 118.98,
                Categories = { "food" }
            },

            StoragePosition = { x = -313.46, y = 804.79, z = 118.98 }, -- Position for extra inventory

            Blipsprite = false,                                      --set own sprite for location or false to use common blip sprite

            UniqueMeals = {
                {
                    Text = "Meat with oregano ",
                    SubText = "InvMax = 10",
                    Desc = "Recipe: 1x Meat, 1x Oregano",
                    Items = {
                        {
                            name = "meat",
                            count = 1
                        },
                        {
                            name = "oregano",
                            count = 1
                        }
                    },
                    Reward = {
                        {
                            name = "consumable_game_meat_oregano_cooked",
                            count = 1
                        }
                    },
                    Type = "item",              -- indicate if it is 'weapon' or 'item'
                    Job = 0,                    -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                    Location = { "smithfields" }, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                    UseCurrencyMode = false,
                    CurrencyType = 0,           -- 0 = money, 1 = gold
                    Category = "food",
                    Animation = 'spindlecook'
                }
            }
        },

        Keanes = {
            Job = "keanes",

            Blipcoords = { x = -244.65, y = 765.42, z = 118.15 },
            Name = "Keane's",

            CraftLocation = {
                name = "Keane's cooker",
                id = 'keanes',
                Job = { "keanes" },
                x = -239.2,
                y = 770.95,
                z = 118.1,
                Categories = { "food" }
            },

            StoragePosition = { x = -237.25, y = 768.21, z = 118.11 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        Emerald = {
            Job = "emeraldsaloon",

            Blipcoords = { x = 1444.9, y = 369.23, z = 89.9 },
            Name = "Emeraldsaloon",

            CraftLocation = {
                name = "Emeraldsaloon cooker",
                id = 'emeraldsaloon',
                Job = { "emeraldsaloon" },
                x = 1450.96,
                y = 369.29,
                z = 89.89,
                Categories = { "food" }
            },

            StoragePosition = { x = 1451.57, y = 371.34, z = 89.89 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        Bastille = {
            Job = "bastille",

            Blipcoords = { x = 2627.9, y = -1220.41, z = 53.25 },
            Name = "Bastille",

            CraftLocation = {
                name = "Bastille cooker",
                id = 'bastille',
                Job = { "bastille" },
                x = 2640.16,
                y = -1222.92,
                z = 53.38,
                Categories = { "food" }
            },

            StoragePosition = { x = 2639.9, y = -1226.34, z = 53.38 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        Doyles = {
            Job = "doyles",

            Blipcoords = { x = 2793.56, y = -1174.5, z = 47.92 },
            Name = "Doyle's",

            CraftLocation = {
                name = "Doyle's cooker",
                id = 'doyles',
                Job = { "doyles" },
                x = 2792.86,
                y = -1167.61,
                z = 47.93,
                Categories = { "food" }
            },

            StoragePosition = { x = 2791.61, y = -1168.46, z = 48.02 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        Parlour = {
            Job = "parlour",

            Blipcoords = { x = 1353.65, y = -1377.04, z = 80.53 },
            Name = "Parlour",

            CraftLocation = {
                name = "Parlour cooker",
                id = 'parlour',
                Job = { "parlour" },
                x = 1340.32,
                y = -1374.12,
                z = 80.48,
                Categories = { "food" }
            },

            StoragePosition = { x = 1339.55, y = -1375.4, z = 80.48 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        OldLight = {
            Job = "oldlight",

            Blipcoords = { x = 2952.46, y = 523.38, z = 45.49 },
            Name = "OldLight",

            CraftLocation = {
                name = "OldLight cooker",
                id = 'oldlight',
                Job = { "oldlight" },
                x = 2947.70,
                y = 528.09,
                z = 45.34,
                Categories = { "food" }
            },

            StoragePosition = { x = 2947.41, y = 529.0, z = 45.33 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        Blackwater = {
            Job = "blackwatersaloon",

            Blipcoords = { x = -808.59, y = -1319.44, z = 43.67 },
            Name = "Blackwater",

            CraftLocation = {
                name = "blackwater cooker",
                id = 'blackwatersaloon',
                Job = { "blackwatersaloon" },
                x = -818.7,
                y = -1318.92,
                z = 43.68,
                Categories = { "food" }
            },

            StoragePosition = { x = -819.82, y = -1318.14, z = 43.68 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        Armadillo = {
            Job = "armadillosaloon",

            Blipcoords = { x = -3708.08, y = -2600.95, z = -13.3 },
            Name = "Armadillo",

            CraftLocation = {
                name = "armadillo cooker",
                id = 'armadillosaloon',
                Job = { "armadillosaloon" },
                x = -3699.77,
                y = -2592.32,
                z = -13.32,
                Categories = { "food" }
            },

            StoragePosition = { x = -3697.94, y = -2600.66, z = -13.32 },

            Blipsprite = false,

            UniqueMeals = {}
        },

        Tumbleweed = {
            Job = "tumbleweedsaloon",

            Blipcoords = { x = -5514.49, y = -2918.09, z = -1.73 },
            Name = "Tumbleweedsaloon",

            CraftLocation = {
                name = "Tumbleweed cooker",
                id = 'tumbleweedsaloon',
                Job = { "tumbleweedsaloon" },
                x = -5516.95,
                y = -2905.78,
                z = -1.75,
                Categories = { "food" }
            },

            StoragePosition = { x = -5518.93, y = -2906.76, z = -1.75 },

            Blipsprite = false,

            UniqueMeals = {}
        }
    },
    -- you can add meals in vorp crafting table
}
