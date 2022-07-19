# MixTestBug.Umbrella

This repo is to provide an example of an issue that has been reported to the Elixir repo.

Mix aliases have been added [here](https://github.com/Mrjaco12/mix_test_bug_umbrella/blob/main/mix.exs#L49). You should be able to run the `mix test` alias and it should work as expected but the `mix test.ci` task will result in no tests being run.
