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
Luality.Math.gcd = require("math.gcd")
Luality.Math.lcm = require("math.lcm")
Luality.Math.is_prime = require("math.is_prime")

-- io
-- network
-- string
Luality.String.ltrim = require("string.ltrim")
Luality.String.rtrim = require("string.rtrim")
Luality.String.trim = require("string.trim")
Luality.String.starts_with = require("string.starts_with")
Luality.String.ends_with = require("string.ends_with")
Luality.String.to_array = require("string.to_array")
Luality.String.for_each = require("string.for_each")
Luality.String.filter = require("string.filter")
Luality.String.is_palindrome = require("string.is_palindrome")
Luality.String.random_string = require("string.random_string")
Luality.String.map = require("string.map")

-- table
Luality.Table.remove_all = require("table.remove_all")
Luality.Table.filter = require("table.filter")
Luality.Table.map = require("table.map")
Luality.Table.remove_nils = require("table.remove_nils")
Luality.Table.size = require("table.size")
Luality.Table.is_empty = require("table.is_empty")
Luality.Table.for_each = require("table.for_each")
Luality.Table.is_array = require("table.is_array")
Luality.Table.values = require("table.values")
Luality.Table.keys = require("table.keys")
Luality.Table.fill = require("table.fill")
Luality.Table.mirror = require("table.mirror")
Luality.Table.reverse = require("table.reverse")
Luality.Table.to_array = require("table.to_array")
Luality.Table.join = require("table.join")
Luality.Table.shuffle = require("table.shuffle")
-- coroutine
-- debug
-- file
-- os
-- package

-- return
return Luality