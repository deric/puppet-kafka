# == Class kafka
# Installs Kafka package.
# Unless you need to explicitly set the version of the Kafka package you
# want, you probably don't need to include this class directly.
# Including just kafka::server to set up a Kafka Broker, or just
# kafka::mirror to set upa Kafka MirrorMaker service should suffice.
#
# == Parameters:
#
# $version   - Kafka package version number.  Set this
#              if you need to override the default
#              package version.
# $major_version - 0.7 or 0.8
#
class kafka(
    $version       = $kafka::defaults::version,
)
{
    package { 'kafka':
        ensure => $version,
    }
}
