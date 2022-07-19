# MixTestBug.Umbrella

This repo is to provide an example of [the issue](https://github.com/elixir-lang/elixir/issues/11997) that has been reported to the [Elixir repo](https://github.com/elixir-lang/elixir).

Mix aliases have been added [here](https://github.com/Mrjaco12/mix_test_bug_umbrella/blob/main/mix.exs#L49).
You should be able to run the `mix test` alias and it should work as expected:

![mix test example](https://raw.githubusercontent.com/Mrjaco12/mix_test_bug_umbrella/main/images/mix_test.png)

But the `mix test.ci` task will result in no tests being run:

![mix test.ci example](https://raw.githubusercontent.com/Mrjaco12/mix_test_bug_umbrella/main/images/mix_test_ci.png)
