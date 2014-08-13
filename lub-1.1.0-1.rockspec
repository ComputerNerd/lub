package = "lub"
version = "1.1.0-1"
source = {
  url = 'https://github.com/lubyk/lub/archive/REL-1.1.0.tar.gz',
  dir = 'lub-REL-1.1.0',
}
description = {
  summary = "Lubyk base module.",
  detailed = [[
    lub: helper code, class declaration.

    lub.Autoload: autoloading classes in modules.

    lub.Dir: a simple directory traversal class.

    lub.Template: a simple templating class that uses {{moustache}} like syntax.

    lub.Param: script parameter save/restore.
  ]],
  homepage = "http://doc.lubyk.org/lub.html",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.3",
  "luafilesystem >= 1.4.0",
}
build = {
  type = 'builtin',
  modules = {
    -- Plain Lua files
    ['lub'            ] = 'lub/init.lua',
    ['lub.Autoload'   ] = 'lub/Autoload.lua',
    ['lub.Dir'        ] = 'lub/Dir.lua',
    ['lub.Param'      ] = 'lub/Param.lua',
    ['lub.Template'   ] = 'lub/Template.lua',
  },
}

