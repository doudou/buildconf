# Write in this file customization code that will get executed after all the
# soures have beenloaded.

# Uncomment to reenable building the RTT test suite
# This is disabled by default as it requires a lot of time and memory
#
# Autobuild::Package['rtt'].define "BUILD_TESTING", "ON"

# Package specific prefix:
# Autobuild::Package['rtt'].prefix='/opt/autoproj/2.0'
#
# See config.yml to set the prefix:/opt/autoproj/2.0 globally for all packages.

setup_package('typelib') do |pkg|
    pkg.env_add_path 'TYPELIB_PLUGIN_PATH', File.join(pkg.prefix, 'lib', 'typelib')
    pkg.env_add_path 'LD_LIBRARY_PATH', File.join(pkg.prefix, 'lib', 'typelib')
end
