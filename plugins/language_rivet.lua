-- mod-version:2 -- lite-xl 2.0

-- Syntax highlighting for the Rivet programming language.
-- by StunxFS :)

local syntax = require "core.syntax"

syntax.add {
    name = "Rivet",
    files = {"%.ri$"},
    comment = "//",
    block_comment = {"/*", "*/"},
    patterns = {
        {pattern = "//.-\n", type = "comment"},
        {pattern = {"/%*", "%*/"}, type = "comment"},
        {pattern = {'"', '"', "\\"}, type = "string"},
        {pattern = "'\\?.'", type = "string"},
        {pattern = "0b[01_]+", type = "number"},
        {pattern = "0o[0-7_]+", type = "number"},
        {pattern = "0x[%x_]+", type = "number"},
        {pattern = "%d[%d_]*%.[%d_]*[eE][-+]?%d+", type = "number"},
        {pattern = "%d[%d_]*%.[%d_]*", type = "number"},
        {pattern = "%d[%d_]*", type = "number"},
        {pattern = "-?%.?%d+", type = "number"},
        {pattern = "[%+%-=/%*%^%%<>!~|&%.%?]", type = "operator"},
        {pattern = "[%a_][%w_]*::", type = "keyword2"},
        {pattern = "[A-Z][%w_]*", type = "keyword2"}, -- types and constants
        {pattern = "[%a_][%w_]*%f[(]", type = "function"},
        {pattern = "[%a_][%w_]*!%f[%[(]", type = "keyword2"},
        {pattern = "[%a_][%w_]*", type = "symbol"},
        {pattern = "%$%s?[%a_][%w_]*", type = "keyword"},
        {pattern = "#%s?include%s()<.->", type = {"keyword", "string"}},
        {pattern = "#%s?[%a_][%w_]*", type = "keyword"}
    },
    symbols = {
        ["extern"] = "keyword",
        ["use"] = "keyword",

        ["pub"] = "keyword",
        ["as"] = "keyword",

        ["pkg"] = "keyword",
        ["mod"] = "keyword",
        ["const"] = "keyword",
        ["trait"] = "keyword",
        ["struct"] = "keyword",
        ["union"] = "keyword",
        ["type"] = "keyword",
        ["enum"] = "keyword",
        ["fn"] = "keyword",
        ["test"] = "keyword",
        ["impl"] = "keyword",

        ["match"] = "keyword",
        ["if"] = "keyword",
        ["elif"] = "keyword",
        ["else"] = "keyword",
        ["loop"] = "keyword",
        ["while"] = "keyword",
        ["for"] = "keyword",

        ["break"] = "keyword",
        ["continue"] = "keyword",
        ["return"] = "keyword",
        ["raise"] = "keyword",

        ["let"] = "keyword",
        ["mut"] = "keyword",
        ["unsafe"] = "keyword",
        ["goto"] = "keyword",
        ["try"] = "keyword",
        ["orelse"] = "keyword",
        ["catch"] = "keyword",
        ["cast"] = "keyword",
        ["is"] = "keyword",
        ["in"] = "keyword",
        ["or"] = "keyword",
        ["and"] = "keyword",

        -- types
        ["bool"] = "keyword2",
        ["i8"] = "keyword2",
        ["i16"] = "keyword2",
        ["i32"] = "keyword2",
        ["i64"] = "keyword2",
        ["u8"] = "keyword2",
        ["u16"] = "keyword2",
        ["u32"] = "keyword2",
        ["u64"] = "keyword2",
        ["f32"] = "keyword2",
        ["f64"] = "keyword2",
        ["char"] = "keyword2",
        ["isize"] = "keyword2",
        ["usize"] = "keyword2",
        ["str"] = "keyword2",
        ["rawptr"] = "keyword2",
        ["Self"] = "keyword2",

        -- literals
        ["base"] = "literal",
        ["self"] = "literal",
        ["true"] = "literal",
        ["false"] = "literal",
        ["none"] = "literal"
    }
}

