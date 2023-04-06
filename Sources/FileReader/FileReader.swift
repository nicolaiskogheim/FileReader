import Foundation
public class FileReader {
    public static func read(fileName: String) -> String? {
        // FileManager.default is a singleton object that provides access to the file system.
        let fileManager = FileManager.default
        // URL in this context is a struct that represents the location of a file or directory.
        // We use it to create a URL to the file we want to read.
        let currentDirectoryURL = URL(fileURLWithPath:
                                fileManager.currentDirectoryPath)
        let fileURL = currentDirectoryURL.appendingPathComponent(fileName)
        // Here, `try?` means "try, and if it fails, return nil".
        // This is a common pattern in Swift.
        // `contentsOf` is a method of the FileManager class that reads the contents of a file into a string.
        // We use it to read the contents of the file we created earlier.
        // String is a struct that represents a sequence of characters.
        // We use it to convert the contents of the file into a string.
        // The `.` syntax used in `.utf8` means "use the `utf8` property of the String struct".
        // `utf8` is a property of the String struct that represents the UTF-8 encoding of the string.
        // Documentation for the String struct in Swift can be found here:
        // https://developer.apple.com/documentation/swift/string
        return try? String(contentsOf: fileURL, encoding: .utf8)
    }
}
