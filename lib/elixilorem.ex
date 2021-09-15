defmodule Elixilorem do
  alias Elixilorem.GetSum, as: GS

  def paragraph(), do: paragraphs()
  def paragraphs(count \\ 1), do: _block(:paragraphs, count)

  def paragraphs(count, %{flavor: flavor}),
    do: _block(:paragraphs, count, %{flavor: flavor, format: nil})

  def sentence(), do: sentences()
  def sentences(count \\ 1), do: _block(:sentences, count)

  def sentences(count, %{flavor: flavor}),
    do: _block(:sentences, count, %{flavor: flavor, format: nil})

  def word(), do: words()
  def words(count \\ 1), do: _block(:words, count)
  def words(count, %{flavor: flavor}), do: _block(:words, count, %{flavor: flavor, format: nil})

  defp _block(type, count, params \\ %{flavor: nil, format: nil}),
    do: GS.get_block_sequence(type, count, params)
end
