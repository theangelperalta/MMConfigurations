local ribs = import './mobile/classes/ribs.jsonnet';
// Use "__" prefix for configuation metadata keys
{
    // The enviroment this configuration is generated for
    // e.g prod, stage, testing
    "__env" : std.extVar('env'),
    // The version of this configuration file
    "__version": "v0.0.1-" + std.extVar('buildNumber'),
    "com.mrmarket.stump" : {
        "com.mrmarket.stump.plugins" : {
            "com.mrmarket.stump.recent": ribs.Plugin + {
                displayName: 'Recent',
                orderPriority: 1000
            },
            "com.mrmarket.stump.search": ribs.Plugin + {
                displayName: 'Search',
                orderPriority: 999
            },
            "com.mrmarket.stump.bookmark": ribs.Plugin + {
                displayName: 'Bookmark',
                orderPriority: 998
            },
            "com.mrmarket.stump.settings": ribs.Plugin + {
                displayName: 'Settings',
                orderPriority: 997,
                "websiteURL": "http://mrmarket.io",
                "bugReportEmail": "bug@mrmarket.io",
                "bugReportEmailMsg": "<p>You're so awesome!. Welcome to the Dev env</p>"
            }
        }
    },
    "com.mrmarket.splash" : {
        "enabled": false,
        "duration" : 7000
    }
}
