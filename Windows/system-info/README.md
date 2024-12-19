# Windows Product Key Finder

A simple VBScript to retrieve the Windows product key from the registry. Useful for recovering Windows license keys before reinstallation or when the key is needed for verification purposes.

## Credits

This script was originally published by [The Windows Club](https://www.thewindowsclub.com/find-windows-10-product-key-using-vb-script). All credit goes to the original authors.

## Usage

1. Save the script as `get-windows-key.vbs`
2. Double-click the script file to run it
3. A message box will appear displaying your Windows product key

## Script Location

```
useful-scripts/
└── windows/
    └── system-info/
        ├── README.md
        └── get-windows-key.vbs
```

## How It Works

The script:
1. Accesses the Windows Registry
2. Retrieves the DigitalProductId value
3. Decodes the product key using a conversion algorithm
4. Displays the result in a message box

## Prerequisites

- Windows operating system
- Administrator privileges (for registry access)
- VBScript support (built into Windows)

## Notes

- This script works with pre-installed Windows keys and retail licenses
- The script must be run on the system whose key you want to retrieve
- Some OEM or digital licenses might not be retrievable using this method

## Limitations

- May not work with all types of Windows licenses
- Requires local system access
- Must be run with appropriate permissions

## Security Note

This script only accesses the local system registry to retrieve information that is already stored on your computer. It does not modify any system settings or transmit any data.

## License

This project is licensed under the MIT License - see the [LICENSE](../../LICENSE) file for details.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)