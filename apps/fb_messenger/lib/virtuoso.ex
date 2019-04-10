defmodule FbMessenger do
  @moduledoc """
  FbMessenger keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  @doc """
  Accepts params and delegates based on incoming message structure
  """
  def handle(%{"object" => _object, "entry" => entries}) do
    FbMessenger.Messages.process_messages(entries)
  end
end