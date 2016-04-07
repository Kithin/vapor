import PackageDescription

let package = Package(
    name: "Vapor",
    dependencies: [
        //Standards package. Contains protocols for cross-project compatability.
        .Package(url: "https://github.com/swiftx/s4.git", majorVersion: 0, minor: 2),

        //Provides critical String functions Foundation is missing on Linux
        .Package(url: "https://github.com/Zewo/String.git", majorVersion: 0, minor: 4),

        //Parses and serializes JSON
        .Package(url: "https://github.com/Zewo/JSON.git", majorVersion: 0, minor: 4),

        //Swift wrapper around Sockets, used for built-in HTTP server
        .Package(url: "https://github.com/ketzusaka/Hummingbird.git", majorVersion: 1, minor: 1),

        //SHA2 + HMAC hashing. Used by the core to create session identifiers.
        .Package(url: "https://github.com/CryptoKitten/HMAC.git", majorVersion: 0, minor: 3),
        .Package(url: "https://github.com/CryptoKitten/SHA2.git", majorVersion: 0, minor: 1),

        //Provides formatted output for Console
        .Package(url: "https://github.com/qutheory/vapor-console-output.git", majorVersion: 0),
    ],
    exclude: [
        "XcodeProject",
    ],
    targets: [
        Target(
            name: "Vapor",
            dependencies: [
                .Target(name: "libc")
            ]
        ),
        Target(
            name: "VaporDev",
            dependencies: [
                .Target(name: "Vapor")
            ]
        )
    ]
)
