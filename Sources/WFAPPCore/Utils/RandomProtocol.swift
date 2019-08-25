public protocol RandomProtocol {
    /// Get a random array of Bytes
    func bytes(count: Int) throws -> Bytes
}



// MARK: - Throwing getter methods
extension RandomProtocol {
    /// Get a random Int8
    public func makeInt8() throws -> Int8 {
        return Int8(bitPattern: try makeUInt8())
    }

    /// Get a random UInt8
    public func makeUInt8() throws -> UInt8 {
        return try bytes(count: 1)[0]
    }

    /// Get a random Int16
    public func makeInt16() throws -> Int16 {
        return Int16(bitPattern: try makeUInt16())
    }

    /// Get a random UInt16
    public func makeUInt16() throws -> UInt16 {
        let random = try bytes(count: 2)
        return UnsafeRawPointer(random)
            .assumingMemoryBound(to: UInt16.self)
            .pointee
    }

    /// Get a random Int32
    public func makeInt32() throws -> Int32 {
        return Int32(bitPattern: try makeUInt32())
    }

    /// Get a random UInt32
    public func makeUInt32() throws -> UInt32 {
        let random = try bytes(count: 4)
        return UnsafeRawPointer(random)
            .assumingMemoryBound(to: UInt32.self)
            .pointee
    }

    /// Get a random Int64
    public func makeInt64() throws -> Int64 {
        return Int64(bitPattern: try makeUInt64())
    }

    /// Get a random UInt64
    public func makeUInt64() throws -> UInt64 {
        let random = try bytes(count: 8)
        return UnsafeRawPointer(random)
            .assumingMemoryBound(to: UInt64.self)
            .pointee
    }

    /// Get a random Int
    public func makeInt() throws -> Int {
        return Int(bitPattern: try makeUInt())
    }

    /// Get a random UInt
    public func makeUInt() throws -> UInt {
        let random = try bytes(count: MemoryLayout<UInt>.size)
        return UnsafeRawPointer(random)
            .assumingMemoryBound(to: UInt.self)
            .pointee
    }
}



