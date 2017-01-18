# Encoding, Hashing, and Encryption

What they are:
* **Encoding**: to provide protection against data corruption when transferring data from one place to another.
When you visit websites and you see some characters are missing or looking funky, that's due to improper encoding.
* **Hashing**: uses a cryptographic algorithm to convert the data to another form in order to make it hard for hackers to see the actual data. It's usually *one-way* which means you can hash the data but it cannot be un-hashed or decoded.
* **Encryption**: Same as hashing but it's *two-way* in that you can get the actual data back by decrypting.

## Encoding

There are many different type of character encoding.
Encoding is useful when converting a character into some bits array for textual representation.
Do not use encoding for binary data, use `Convert.ToBase64String` and `Convert.FromBase64String` instead for C#.

### ASCII

Covers latin characters, a few punctuations, and numbers. It's not big enough to cover all the language of the world.

### Unicode (UTF)

Covers all characters by assigning every character a unique number called a code point. The main ones that are used are UTF-8 and UTF-16.

## Hashing

### SHA1
Fast hashing. Can use [SHA1 hash online](http://www.sha1-online.com) tool to see the results.
```csharp
using (var sha1 = SHA1.Create())
{
    var bytes = Encoding.UTF8.GetBytes(value);
    var hash = sha1.ComputeHash(bytes);
    password = BitConverter.ToString(hash).Replace("-", "");
}
```

### MD5
Try to avoid - pretty insecure.

## Encryption

Useful for any information that you need to encrypt and also be able to get the actual value back from decrypting.

### Symmetric Encryptions

#### AES (Advanced Encryption Standard)

Example [here](https://msdn.microsoft.com/en-us/library/system.security.cryptography.aes(v=vs.110).aspx).
You can store the `key` somewhere safe.
Append the `IV` to the encrypted data before storing so when you pull back data, you can use the `IV` by extracting it out.

#### 3DES


### Asymmetric Encryptions

#### RSA


### AES


## Byte representation vs String representation

Never use text encoding (like Unicode or ASCII) on binary data (like cryptographic key or ciphertext).
Use `Convert.ToBase64String` and `Convert.FromBase64String` instead for C#.

---

## Credit(s)
* [Encryption and decryption in ASP.NET Core](http://www.mikesdotnetting.com/article/295/encryption-and-decryption-in-asp-net-core)
