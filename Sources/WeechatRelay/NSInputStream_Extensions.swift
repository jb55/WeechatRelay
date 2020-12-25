//
//  NSInputStream_Extensions.swift
//  WeechatRelay
//
//  Created by Johan Lindskogen on 2015-08-19.
//  Copyright © 2015 Lindskogen. All rights reserved.
//

import Foundation

extension InputStream {

    func readUInt8() -> UInt8 {
        var buffer : UInt8 = 0
        let bytesRead = self.read(&buffer, maxLength: 1)
        assert(bytesRead >= 0, "stream not open?")

        return buffer
    }

    func readInt8() -> Int8 {
        return Int8(bitPattern: readUInt8())
    }

    func readInt32() -> Int32 {
        var buffer : UInt32 = 0
        buffer += UInt32(readUInt8()) << (3 * 8)
        buffer += UInt32(readUInt8()) << (2 * 8)
        buffer += UInt32(readUInt8()) << 8
        buffer += UInt32(readUInt8())

        return Int32(bitPattern: buffer)
    }

    func readInt() -> Int {
        return Int(readInt32())
    }

    func readChar() -> Bool {
        return readUInt8() == 1
    }

    func readBytes(_ length: Int) -> [UInt8] {
        var buffer = [UInt8]();
	buffer.reserveCapacity(length);
        let bytesRead = self.read(&buffer, maxLength: length)
        assert(bytesRead >= 0, "stream not open?")

        return buffer
    }

    func readString(_ length: Int) -> String {
    	let bytes = readBytes(length);

	if let string = String(bytes: bytes, encoding: .utf8) {
		return string
	} else {
		return ""
	}
    }

}
