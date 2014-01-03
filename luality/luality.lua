-- Copyright, 2013, Andrew Shmig, andrewshmig@yandex.ru

-- Luality library path
package.path = "/Users/new/Documents/Development/Luality/luality/?.lua"

-- Luality library initialization
Luality = {}
Luality.Algorithms = {}
Luality.DataStructures = {}
Luality.Math = {}
Luality.IO = {}
Luality.Network = {}
Luality.String = {}
Luality.Table = {}
Luality.Coroutine = {}
Luality.Debug = {}
Luality.File = {}
Luality.OS = {}
Luality.Package = {}

-- algorithms
-- data_structures
-- math
-- io
-- network
-- string
-- table
Luality.Table.remove_all = require("table.remove_all")
Luality.Table.filter = require("table.filter")
Luality.Table.map = require("table.map")
Luality.Table.remove_nils = require("table.remove_nils")
Luality.Table.size = require("table.size")
Luality.Table.is_empty = require("table.is_empty")
Luality.Table.for_each = require("table.for_each")
Luality.Table.is_array = require("table.is_array")
-- coroutine
-- debug
-- file
-- os
-- package

-- return
return Luality