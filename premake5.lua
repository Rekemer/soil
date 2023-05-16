project "Soil"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
	staticruntime "off"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
    files
    {
     "%{prj.locaiton}src/**.c",
     "%{prj.locaiton}include/**.h"

    }
    includedirs
    {
        "%{prj.locaiton}include"
    }
    links
    {
        "opengl32.lib"
    }

    filter "configurations:Debug"
        defines "KY_DEBUG"
        symbols "On"
     
    filter "configurations:Release"
        defines "KY_RELEASE"
        optimize "On"
