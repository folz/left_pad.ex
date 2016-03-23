# LeftPad

Pad a string to the left with any number of characters.

```elixir
iex(1)> LeftPad.left_pad("foo", 5)
"  foo"
iex(2)> LeftPad.left_pad("foo", 6, "-")
"---foo"
iex(3)> LeftPad.left_pad("foo", 10, "/.-")
"/.-/.-/foo"
iex(4)> LeftPad.left_pad("foo", 6, "❤️")
"❤️❤️❤️foo"
```

## Installation

LeftPad is [available in Hex](https://hex.pm/packages/left_pad). The package can be installed by:

  1. Add left_pad to your list of dependencies in `mix.exs`:

        def deps do
          [{:left_pad, "~> 0.0.3"}]
        end

  2. Ensure left_pad is started before your application:

        def application do
          [applications: [:left_pad]]
        end

## FAQ

Q: Isn't this just `String.rjust`?

A: No. `String.rjust` only accepts a single character to pad by. `left_pad` can
   pad with an entire string, repeating it if needed. It also supports Unicode.

Q: Will you unpublish this in the future, potentially breaking the builds of
   every library that depends on it?

A: ¯\\\_(ツ)\_/¯

## License

See [LICENSE](LICENSE)
