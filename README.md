# sqlanywhere-cookbook

Cookbook to install Sql Anywhere Client. Currently only installs version 17.

## Supported Platforms

Windows

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sqlanywhere']['client17']['name']</tt></td>
    <td>Boolean</td>
    <td>The install name for Sql Anywhere Client</td>
    <td><tt>Sql Anywhere Client 17</tt></td>
  </tr>
</table>

## Usage

### sqlanywhere::client17

Include `sqlanywhere` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[sqlanywhere::client17]"
  ]
}
```

## License and Authors

Author:: Taliesin Sisson (taliesins@yahoo.com)
