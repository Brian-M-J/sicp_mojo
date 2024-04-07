# SICP Mojo🔥
Welcome to SICP Mojo! This is my personal attempt to port all the code in the famous introductory computer science book [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/9780262543231/) to [Mojo](https://www.modular.com/max/mojo), using its JavaScript version as a reference.

## But why?
This book was on my "to read" list anyways, so I thought I would practice the programs in it. I'm much more familiar with Python than JavaScript, so I'm using a programming language similar to Python to do it.

## Why Mojo specifically?
I sincerely believe Mojo is the future of the entire Python ecosystem, so I'm trying to learn it now, even though it's at a very early stage (as of 06-04-2024, Mojo is at version [24.2](https://docs.modular.com/mojo/changelog#v242-2024-03-28)).

Mojo also has some neat features that Python doesn't, like tail recursion optimization (see the "Tail Call Optimization (TCO)" section of [this](https://www.modular.com/blog/mojo-vs-rust-is-mojo-faster-than-rust) page).

TODO: It's not yet clear whether Mojo only supports tail recursion optimization (tail calls to _the current_ function are replaced by jump instructions and reuse the stack frame) or full tail call optimization (tail calls to _any_ function are replaced by jump instructions and reuse the stack frame). I've [asked](https://discord.com/channels/1087530497313357884/1206995505700147254/1207363538943746119) about it but no answer yet.

## How do I run this code?
**Recommended**: Download Mojo through the Modular website. The guide for it is [here](https://docs.modular.com/mojo/manual/get-started/).

You can run the programs in the Mojo REPL if you prefer the instantaneous feedback (type `mojo`/`mojo repl` in your terminal to open the Mojo REPL (read-evaluate-print loop)) or put your scripts in a .mojo/.🔥 file and run them with `mojo <filename>.mojo`/`mojo <filename>.🔥`.

Alternatively, you can directly use Mojo in the browser through the [Mojo playground](https://docs.modular.com/mojo/playground).

TODO: Implement mojo_slang based on [js-slang](https://github.com/source-academy/js-slang) instead of copy-pasting the code directly.