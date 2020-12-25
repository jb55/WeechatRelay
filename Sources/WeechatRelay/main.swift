//
//  main.swift
//  WeechatRelay
//
//  Created by Johan Lindskogen on 2015-08-23.
//  Copyright © 2015 Lindskogen. All rights reserved.
//

import Cocoa

var connected = false
var resolvedPort = 0

var wc: Weechat!

do {
    wc = try Weechat(host: "10.0.0.1", port: resolvedPort)
    
    wc.getLines()
    wc.getBuffers()
    
    // wc.getHotlist()
} catch {
    fatalError("ERRROR")
}

