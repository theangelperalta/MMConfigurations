// Use "__" prefix for configuation metadata keys
{
    // The enviroment this configuration is generated for
    // e.g prod, stage, testing
    "__env" : std.extVar('env'),
    // The version of this configuration file
    "__version": "v0.0.1-" + std.extVar('buildNumber'),
    "com.mrmarket.stump" : {
        "com.mrmarket.stump.plugins" : {
            "com.mrmarket.stump.recent": {
                "enabled": true,
                "displayName" : "Recent",
                "orderPriority": 1000
            },
            "com.mrmarket.stump.search": {
                "enabled": true,
                "displayName" : "Search",
                "orderPriority": 999
            },
            "com.mrmarket.stump.bookmark": {
                "enabled": true,
                "displayName" : "Bookmark",
                "orderPriority": 998
            },
            "com.mrmarket.stump.settings": {
                "enabled": true,
                "displayName" : "Settings",
                "orderPriority": 997
            }
        }
    },
    "com.mrmarket.splash" : {
        "enabled": true,
        "duration" : 7000
    }
}
