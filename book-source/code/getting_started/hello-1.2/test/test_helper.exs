#---
# Excerpted from "Programming Phoenix 1.4",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/phoenix14 for more book information.
#---
ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Hello.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Hello.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Hello.Repo)

