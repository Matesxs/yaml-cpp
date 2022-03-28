project "yaml-cpp"
  kind "StaticLib"
  language "C++"
  systemversion "latest"
  cppdialect "C++17"
  staticruntime "On"

  targetdir("bin/" .. outputdir .. "/%{prj.name}")
  objdir("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
    "src/**.h",
    "src/**.cpp",

    "include/**.h"
  }

  includedirs
  {
    "include"
  }

  filter "system:linux"
    pic "On"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

  filter "configurations:Release"
    runtime "Release"
    optimize "on"

  filter "configurations:Dist"
    runtime "Release"
    optimize "on"


