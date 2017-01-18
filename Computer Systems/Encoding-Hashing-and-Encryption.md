# Encoding, Hashing, and Encryption

What they are:
* **Encoding**: to provide protection against data corruption when transferring data from one place to another.
When you visit websites and you see some characters are missing or looking funky, that's due to improper encoding.
* **Hashing**: uses a cryptographic algorithm to convert the data to another form in order to make it hard for hackers to see the actual data. It's usually *one-way* which means you can hash the data but it cannot be un-hashed or decoded.
* **Encryption**: Same as hashing but it's *two-way* in that you can get the actual data back by decrypting.

## Encoding

There are many different type of character encoding. Encoding is useful when converting a character into some bits array.

### ASCII

Covers latin characters, a few punctuations, and numbers. It's not big enough to cover all the language of the world.

### Unicode (UTF)

Covers all characters by assigning every character a unique number called a code point. The main ones that are used are UTF-8 and UTF-16.

## Hashing

### SHA1
Fast hashing but not as secure. Can use [SHA1 hash online](http://www.sha1-online.com) tool to see the results.
```csharp
(TODO: insert the code sample that works here)
```

## Encryption



---

## Credit(s)
* [Encryption and decryption in ASP.NET Core](http://www.mikesdotnetting.com/article/295/encryption-and-decryption-in-asp-net-core)
