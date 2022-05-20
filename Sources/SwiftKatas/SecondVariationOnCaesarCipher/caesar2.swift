import Foundation

/*
 https://www.codewars.com/kata/55084d3898b323f0aa000546/train/swift
 */

func encode(_ s: String, _ shift: Int) -> [String] {
    Cleartext(s)
            .encrypt(by: shift)
            .toChunks(amount: 5)
            .toArray()
}

func decode(_ arr: [String]) -> String {
    Chunks(arr)
            .join()
            .decrypt()
            .plaintext()
}

class Chunks {
    private final let chunks: [String]

    init(_ chunks: [String]) {
        self.chunks = chunks
    }

    func toArray() -> [String] {
        chunks
    }

    func join() -> Ciphertext {
        Ciphertext.from(ciphertext: chunks.joined())
    }

    private func append(_ other: Chunks) -> Chunks {
        var appendedChunks: [String] = []
        appendedChunks.append(contentsOf: chunks)
        appendedChunks.append(contentsOf: other.chunks)

        return Chunks(appendedChunks)
    }

    class func from(ciphertext: String, amount: Int) -> Chunks {
        let bytes: Int = ciphertext.lengthOfBytes(using: String.Encoding.utf8)
        let chunkSize: Int = Int(ceil(Double(bytes) / Double(amount)))

        return createChunks(ciphertext, withChunkSize: chunkSize)
    }

    class private func createChunks(_ ciphertext: String, withChunkSize: Int) -> Chunks {
        if ciphertext.isEmpty {
            return Chunks([])
        }

        let chunk = String(ciphertext.prefix(withChunkSize))
        let remaining = String(ciphertext.dropFirst(withChunkSize))
        let furtherChunks = createChunks(remaining, withChunkSize: withChunkSize)

        return Chunks([chunk]).append(furtherChunks)
    }
}

class Ciphertext {
    private final let prefix: Prefix
    private final let payload: String

    init(_ prefix: Prefix, _ payload: String) {
        self.prefix = prefix
        self.payload = payload
    }

    func toChunks(amount: Int) -> Chunks {
        let joined = prefix.toString() + payload
        return Chunks.from(ciphertext: joined, amount: amount)
    }

    func decrypt() -> Cleartext {
        let cleartext = payload.map {
            Caesars.move($0, shift: (prefix.shift * -1))
        }

        return Cleartext(String(cleartext))
    }

    class func from(ciphertext: String) -> Ciphertext {
        let prefix = Prefix.forDecryption(ciphertext)
        let payload = ciphertext.dropFirst(2)

        return Ciphertext(prefix, String(payload))
    }
}

class Prefix {
    public final let shift: Int
    private final let chars: [Character]

    private init(_ shift: Int, _ chars: [Character]) {
        self.shift = shift
        self.chars = chars
    }

    public func toString() -> String {
        String(chars)
    }

    class public func forEncryption(_ cleartext: String, _ shift: Int) -> Prefix {
        let first: Character = cleartext.first!.lowercased().first!
        let second = Caesars.move(first, shift: shift)

        return Prefix(shift, [first, second])
    }

    class func forDecryption(_ ciphertext: String) -> Prefix {
        let first: Character = ciphertext.first!;
        let second: Character = ciphertext.dropFirst().first!
        let shift = Caesars.shift(from: first, to: second)

        return Prefix(Int(shift), [first, second])
    }
}

class Cleartext {
    private final let cleartext: String

    public init(_ cleartext: String) {
        self.cleartext = cleartext
    }

    func encrypt(by shift: Int) -> Ciphertext {
        let ciphertext: [Character] = cleartext.map {
            Caesars.move($0, shift: shift)
        }

        let prefix: Prefix = Prefix.forEncryption(cleartext, shift)

        return Ciphertext(prefix, String(ciphertext))
    }

    func plaintext() -> String {
        cleartext
    }
}

class Caesars {
    private static var ALPHABET_SIZE: Int = 26

    public class func move(_ c: Character, shift: Int) -> Character {
        let offset: UInt8;

        if c.isLowercase {
            offset = Character("a").asciiValue!
        } else if c.isUppercase {
            offset = Character("A").asciiValue!
        } else {
            return c
        }

        let effectiveShift = UInt8((shift + ALPHABET_SIZE) % ALPHABET_SIZE)
        let value = (c.asciiValue! + effectiveShift + UInt8(ALPHABET_SIZE) - offset) % UInt8(ALPHABET_SIZE) + offset

        return Character(UnicodeScalar(value))
    }

    public class func shift(from: Character, to: Character) -> UInt8 {
        (to.asciiValue! - from.asciiValue!) + UInt8(ALPHABET_SIZE) % UInt8(ALPHABET_SIZE)
    }
}
