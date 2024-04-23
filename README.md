Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.




  <div class="wallet-select mt-4 d-flex justify-content-center">
    <p class="border rounded-pill border-black p-1 px-3"> <%= @wallet.name %> Wallet <i class="fa-solid fa-chevron-down"></i></p>
  </div>

  <div class="wallets-dropdown">
    <ul class="list-unstyled border border-black rounded-5 text-center d">
    <% @wallets.each do |wallet| %>
      <li><p><%= wallet.name %></p></li>
      <% end %>
    </ul>
  </div>

