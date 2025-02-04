package = "algorithms"
version = "1.0.0-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["baekjoon.bronze.10757"] = "baekjoon\\bronze\\10757.lua",
      ["baekjoon.bronze.11942"] = "baekjoon\\bronze\\11942.lua",
      ["baekjoon.bronze.1271"] = "baekjoon\\bronze\\1271.lua",
      ["baekjoon.bronze.13277"] = "baekjoon\\bronze\\13277.lua",
      ["baekjoon.bronze.14581"] = "baekjoon\\bronze\\14581.lua",
      ["baekjoon.bronze.14645"] = "baekjoon\\bronze\\14645.lua",
      ["baekjoon.bronze.14928"] = "baekjoon\\bronze\\14928.lua",
      ["baekjoon.bronze.2338"] = "baekjoon\\bronze\\2338.lua",
      ["baekjoon.bronze.2440"] = "baekjoon\\bronze\\2440.lua",
      ["baekjoon.bronze.2845"] = "baekjoon\\bronze\\2845.lua",
      ["baekjoon.bronze.3733"] = "baekjoon\\bronze\\3733.lua",
      ["baekjoon.bronze.4101"] = "baekjoon\\bronze\\4101.lua",
      ["baekjoon.bronze.4999"] = "baekjoon\\bronze\\4999.lua",
      ["baekjoon.bronze.5339"] = "baekjoon\\bronze\\5339.lua",
      ["baekjoon.bronze.5341"] = "baekjoon\\bronze\\5341.lua",
      ["baekjoon.bronze.5522"] = "baekjoon\\bronze\\5522.lua",
      ["baekjoon.bronze.6840"] = "baekjoon\\bronze\\6840.lua",
      ["baekjoon.bronze.7891"] = "baekjoon\\bronze\\7891.lua",
      ["baekjoon.bronze.8370"] = "baekjoon\\bronze\\8370.lua",
      ["baekjoon.bronze.9653"] = "baekjoon\\bronze\\9653.lua",
      ["baekjoon.bronze.9654"] = "baekjoon\\bronze\\9654.lua",
      ["build.CMakeFiles.3.31.4.CompilerIdC.CMakeCCompilerId"] = {
         sources = "build\\CMakeFiles\\3.31.4\\CompilerIdC\\CMakeCCompilerId.c"
      },
      tmp = "tmp.lua"
   }
}
tests = {}
