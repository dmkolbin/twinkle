# frozen_string_literal: true
class UserOrgsFinder
  include Findit::Collections

  def initialize(user)
    @user = user
  end

  private

  def find
    Org.where(name: @user.api.orgs.map(&:login)).to_a
  end
end
