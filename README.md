ruby Cookbook
=============
This cookbook installs ruby on your machine without using a ruby switcher ie it is built from scratch

Requirements
------------

#### packages
- `apt` - Software package manager for debian.
-  `build-essential` - Install build tools like make.

Attributes
----------

#### ruby::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ruby']['version']</tt></td>
    <td>String</td>
    <td>Which version of ruby</td>
    <td><tt>2.1.2</tt></td>
  </tr>
</table>

Usage
-----
#### ruby::default
Just include `ruby` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ruby]"
  ]
}
```

Contributing
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: Suraj Shirvankar