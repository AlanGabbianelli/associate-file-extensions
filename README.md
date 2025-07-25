# Associate File Extensions on Mac

## Purpose
This script is designed to associate various file extensions with a specified
application on macOS. By default, it associates the file extensions with Visual Studio Code (because that's what I use).

## Dependencies
- [Homebrew](https://github.com/Homebrew/brew)
- [duti](https://github.com/moretension/duti)
- The application to associate the file extensions with

## How it works
The script sets the `HOMEBREW_NO_AUTO_UPDATE` environment variable to prevent
`brew` from auto-updating during installation. It installs `duti` via `brew
install duti` if it's not already installed.

The script defines an array of file extensions to associate with the specified
application. For each extension, it runs a `duti` command that associates the
extension with the specified application.

The `duti` command has this syntax: `duti -s <app_id> <extension> all`, where
`<app_id>` is the ID of the application to associate the file extension with,
and `<extension>` is the file extension to associate. The `all` flag is used to
associate the extension with all possible file types (e.g., `public.json`,
`public.text`, etc.).

The script runs silently. If a duti command fails to associate an extension,
it will print the error message from the command directly to the terminal.

## Usage

### Clone the repo
```bash
git clone git@github.com:AlanGabbianelli/associate-file-extensions.git
```

### Move to the repo's directory
```bash
cd associate-file-extensions
```

### Make the script executable
```bash
chmod +x ./script.sh
```

### Run the program
- To use the default editor (Visual Studio Code), run:
    ```bash
    ./script.sh
    ```
- To use a different editor, run:
    ```bash
    ./script.sh <app_name>
    ```
  where `<app_name>` is the name of an editor of your choice.

## Notes
To associate additional file extensions with the specified application, they
can be added to the extensions array.

## Credits
Highly inspired by [Darragh ORiordan](https://github.com/darraghoriordan)'s
article [Set vscode as the default editor for text files on mac][0].

[0]: https://www.darraghoriordan.com/2021/09/15/vscode-default-text-files-mac/

## License

[LICENSE](https://github.com/AlanGabbianelli/associate-file-extensions/blob/main/LICENSE)
