# Get started with Ruby

This is the initial course for [Daigaku](https://github.com/daigaku-ruby/daigaku), a CLI and text based interface to learn the Ruby programming language.

## Contributing

Daigaku is only helpful for learning Ruby if there are some awesome courses available.
Hence, we like to encourage you to improve the available contents and add chapters and units to this course.

1. Fork it ( https://github.com/daigaku-ruby/Get_started_with_Ruby/fork )
2. Create your feature branch (`git checkout -b my-new-chapter`)
3. Commit your changes (`git commit -am 'Add some chapter'`)
4. Push to the branch (`git push origin my-new-chapter`)
5. Create a new Pull Request

## How to add a chapter or unit

You can add chapters by just adding a new folder which comprises the unit folders.
Each unit folder should contain the `task.md` file and the `solution_spec.rb` file with the tests for the task. Optionally you can add a `solution.rb` file with the reference code. This code will be shown in the Daigaku Screen after the specs passed.

The name of the chapter's folder and the units's folders determine the name that is displayed in the Daigaku Screen.

Naming conventions for a chapter's folder or a unit's folder:

* Start with a number
* Seperate words with underscores (will be substituted with spaces in the Daigaku Screen)
* You can also use dashes within the folder's name (will be preserved in the Daigaku Screen)

If you want to insert a chapter or unit inbetween existing ones you can simply modify the leading numbers of the folder's names. The chapters and units are displayed sorted by the leading number in the Daigaku screen.

Example:

```
└── Get_started_with_Ruby
    ├── 1_Existing_Chapter_Name
    │   ├── 1_Existing_Unit_Name
    │   ├── 2_Existing_Unit_Name
    │   └── ...
    ├── 2_New_Chapter-My_way_of_programming
    │   ├── 1_New_unit_name
    │   │   ├── task.md
    │   │   ├── solution_spec.rb
    │   │   └── (solution.rb) # optional
    │   ├── 2_Another_new_unit_name
    │   │   ├── task.md
    │   │   ├── solution_spec.rb
    │   │   └── (solution.rb) # optional
    │   └── ...
    ├── ...
```

For further instructions on how to create a Daigaku course, the task file, and tests for the task please have a look at the [Daigaku Wiki](https://github.com/daigaku-ruby/daigaku/wiki/How-to-create-a-Daigaku-course).

### License

This course is released under the [MIT License](http://opensource.org/licenses/MIT).