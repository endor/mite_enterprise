<form action="#/accounts" method="POST">
  <fieldset>
    <legend>Add mite Account</legend>
    <p>
      <label for="account_subdomain">mite subdomain:</label>
      <input type="text" name="account[subdomain]" id="account_subdomain"/>
    </p>
    <p>
      <label for="account_api_key">mite API key:</label>
      <input type="text" name="account[api_key]" id="account_api_key"/>
    </p>
    <p><input type="submit" value="Add Account"/></p>
  </fieldset>
</form>

{{#any_accounts}}
  <h2>Accounts</h2>
  <form action="#/projects" method="GET">
    <ul>
      {{#accounts}}
        <li>
          <input type="radio" name="account" value="{{subdomain}}|{{api_key}}" id="account_{{subdomain}}"/>
          <label for="account_{{subdomain}}">{{subdomain}}</label>
        </li>
      {{/accounts}}
    </ul>
    <p><input type="submit" value="Load Projects"></input></p>
  </form>
{{/any_accounts}}

<div id="projects"></div>

<div id="time_entries"></div>