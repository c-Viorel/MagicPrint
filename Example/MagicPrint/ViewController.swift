//
//  ViewController.swift
//  MagicPrint
//
//  Created by Viorel Porumbescu on 02/14/2020.
//  Copyright (c) 2020 Viorel Porumbescu. All rights reserved.
//

import Cocoa
import MagicPrint

class ViewController: NSViewController {

    @IBAction func printVerbose(_ sender: Any) {
        magicVerbose("This is a verbose message printed on the console.")
    }

    @IBAction func printMessage(_ sender: Any) {
        magicMessage("This is a simple message printed on the console.")
    }

    @IBAction func printInfo(_ sender: Any) {
        magicInfo("This is a sample info message printed on the console.")
    }
    @IBAction func printWarning(_ sender: Any) {
        magicWarning("This is warning message printed on the console.")
    }
    @IBAction func printError(_ sender: Any) {
        magicError("This is an error message printed on the console.")
    }

}

