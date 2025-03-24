project "FMODAudioEngine"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files 
    { 
        "src/**.h", 
        "src/**.cpp" 
    }

    includedirs 
    { 
        "include",
        "dependencies/fmod/include" 
    }

    libdirs 
    { 
        "dependencies/fmod/lib"
    }

    filter "configurations:Debug"
		defines "SE_DEBUG"
		runtime "Debug"
		symbols "on"

    filter "configurations:Release"
		defines "SE_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "SE_DIST"
		runtime "Release"
		optimize "on"