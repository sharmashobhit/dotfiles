import dbus
session_bus = dbus.SessionBus()
spotify_bus = session_bus.get_object("org.freedesktop.network-manager-applet", "/org/freedesktop/NetworkManager/Devices")
print(spotify_bus.__dict__)
#spotify_properties = dbus.Interface(spotify_bus,
#                                    "org.freedesktop.DBus.Properties")
#metadata = spotify_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")
