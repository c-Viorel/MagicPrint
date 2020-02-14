
//
//  Magic.swift
//  Viorel Porumbescu
//
//  Created by Viorel Porumbescu on 3/22/19.
//
import Foundation



public struct MagicConfig {
    static var enableMagicMessages: Bool = true
}

let enableDebuggerMessages: Bool = true
/// Print a info message in console if enableMagicMessages are on
///
/// - Parameters:
///   - object: the object that will be printed
///   - file: the name of the file from where the method is called. is determined automatically
///   - function: the function name from where current method is called. is determined automatically
///   - line: the line number where curent method is placed. is determined automatically
public func magicInfo<T>(_ object: T, _ file: String = #file, _: String = #function, _ line: Int = #line) {
    if !MagicConfig.enableMagicMessages {
        return
    }
    let fileString = file as NSString
    let fileLastPathComponent = fileString.lastPathComponent as NSString
    let filename = fileLastPathComponent.deletingPathExtension
    let spaces = getSpaces(forWord: filename + ".\(line)")
    Swift.print("^-\(spaces)[\(filename).\(line)]: 🔷 \(object)\n", terminator: "")
}

/// Print an warning message in console  if enableMagicMessages are on
///
/// - Parameters:
///   - object: the object that will be printed
///   - file: the name of the file from where the method is called. is determined automatically.  Do not override this default.
///   - function: the function name from where current method is called. is determined automatically.  Do not override this default.
///   - line: the line number where curent method is placed. is determined automatically.  Do not override this default.
public func magicWarning<T>(_ object: T, _ file: String = #file, _: String = #function, _ line: Int = #line) {
    if !MagicConfig.enableMagicMessages {
        return
    }
    let fileString = file as NSString
    let fileLastPathComponent = fileString.lastPathComponent as NSString
    let filename = fileLastPathComponent.deletingPathExtension

    let spaces = getSpaces(forWord: filename + ".\(line)")
    Swift.print("^-\(spaces)[\(filename).\(line)]: 🔶 \(object)\n", terminator: "")
}

/// Print an error message in console  if enableMagicMessages are on
///
/// - Parameters:
///   - object: the object that will be printed
///   - file: the name of the file from where the method is called. is determined automatically.  Do not override this default.
///   - function: the function name from where current method is called. is determined automatically.  Do not override this default.
///   - line: the line number where curent method is placed. is determined automatically.  Do not override this default.
public func magicError<T>(_ object: T, _ file: String = #file, _: String = #function, _ line: Int = #line) {
    if !MagicConfig.enableMagicMessages {
        return
    }
    let fileString = file as NSString
    let fileLastPathComponent = fileString.lastPathComponent as NSString
    let filename = fileLastPathComponent.deletingPathExtension
    // Swift.print("\(filename).\(function)[\(line)]: \(object)\n", terminator: "")
    let spaces = getSpaces(forWord: filename + ".\(line)")
    Swift.print("^-\(spaces)[\(filename).\(line)]: 🔴 \(object)\n", terminator: "")
}

/// Print a message in console even if enableMagicMessages are on
///
/// - Parameters:
///   - object: the object that will be printed
///   - file: the name of the file from where the method is called. is determined automatically.  Do not override this default.
///   - function: the function name from where current method is called. is determined automatically.  Do not override this default.
///   - line: the line number where curent method is placed. is determined automatically.  Do not override this default.
public func magicMessage<T>(_ object: T, _ file: String = #file, _: String = #function, _ line: Int = #line) {
    if !MagicConfig.enableMagicMessages {
        return
    }
    let fileString = file as NSString
    let fileLastPathComponent = fileString.lastPathComponent as NSString
    let filename = fileLastPathComponent.deletingPathExtension

    let spaces = getSpaces(forWord: filename + ".\(line)")
    Swift.print("^-\(spaces)[\(filename).\(line)]: 💠 \(object)\n", terminator: "")
}

/// Print a verbose  message in console  if enableMagicMessages are on
///
/// - Parameters:
///   - object: the object that will be printed
///   - file: the name of the file from where the method is called. is determined automatically.  Do not override this default.
///   - function: the function name from where current method is called. is determined automatically.  Do not override this default.
///   - line: the line number where curent method is placed. is determined automatically.  Do not override this default.
public func magicVerbose<T>(_ object: T, _ file: String = #file, _: String = #function, _ line: Int = #line) {
    if !MagicConfig.enableMagicMessages {
        return
    }
    let fileString = file as NSString
    let fileLastPathComponent = fileString.lastPathComponent as NSString
    let filename = fileLastPathComponent.deletingPathExtension

    let spaces = getSpaces(forWord: filename + ".\(line)")
    Swift.print("^-\(spaces)[\(filename).\(line)]: ◽️ \(object)\n", terminator: "")
}

/// This  block will be executed only in debug configuration
/// Usefull for quick dedugging setups, like  logs, or prefilled textFields with test accounts, etc
///
/// - Parameter code: The piece of code that will run only in debugg builds/.
public func inDebugBuilds(_ code: () -> Void) {
    if _isDebugAssertConfiguration() {
        code()
    }
}

/*
 Align vertically all comments, to be able to identify more quickly
 the type of message (message)💠, (error)🔴, (warning)🔶,(info)🔷 or (verbose)◽️
 */
fileprivate func getSpaces(forWord word: String) -> String {
    let max = 40

    if word.count >= max { return "" }
    var s = ""
    for _ in word.count ... max { s += " " }
    return s
}
