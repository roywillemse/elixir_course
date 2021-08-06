defmodule BankAccount do
  @moduledoc """
  A bank account that supports access from multiple processes.
  """
  @account_closed_error {:error, :account_closed}

  @typedoc """
  An account handle.
  """
  @opaque account :: pid

  @doc """
  Open the bank. Makes the account available.
  """
  @spec open_bank() :: account
  def open_bank() do
    {:ok, account} = Agent.start(fn -> 0 end)
    account
  end

  @doc """
  Close the bank. Makes the account unavailable.
  """
  @spec close_bank(account) :: :ok
  def close_bank(account) do
    Agent.stop(account)
  end

  @doc """
  Get the account's balance.
  """
  @spec balance(account) :: integer
  def balance(account) do
    case is_account_open(account) do
      true -> Agent.get(account, fn state -> state end)
      _ -> @account_closed_error
    end
  end

  @doc """
  Update the account's balance by adding the given amount which may be negative.
  """
  @spec update(account, integer) :: any
  def update(account, amount) do
    case is_account_open(account) do
      true -> Agent.update(account, fn state -> state + amount end)
      _ -> @account_closed_error
    end
  end

  defp is_account_open(account) do
    Process.alive?(account)
  end
end
