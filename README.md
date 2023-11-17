# Public IP Address Retriever

## Overview

The Public IP Address Retriever is a versatile and user-friendly command-line tool designed to fetch your public IP address using various online services. It offers flexibility and reliability by integrating multiple methods, ensuring that you can always find your IP address as long as you have an internet connection.

&nbsp;
&nbsp;

## Features

- **Multiple Services**: Fetches IP address from various sources like `icanhazip.com`, `ipinfo.io/ip`, `ifconfig.me`, and more.
- **All-In-One Option**: Includes an option to fetch IP addresses from all available services in one go.
- **Adaptive Tooling**: Uses curl, wget, host or dig, depending on what's available on the system.
- **Error Handling**: Implements error handling and timeout for reliable execution.
- **VPN and Proxy Compatible**: Works seamlessly with VPNs and proxies, showing the IP address provided to you in such environments.

&nbsp;
&nbsp;

## Requirements
- Bash shell
- Curl or Wget
- Dig and Host (for certain methods)

&nbsp;
&nbsp;

## Installation
No installation is required. Simply download the script, and you're ready to go.

&nbsp;
&nbsp;

## Usage
1. Make the script executable:

   ``` chmod +x get_public_ip.sh ```

2. Run the script

   ```./get_public_ip.sh```

3. Select a method from the presented list or choose to run all methods.

&nbsp;
&nbsp;

## How It Works
The script connects to specified online services and retrieves the public IP address as seen by these services. It can use different methods (curl, wget, host, dig) based on what's available on your system and the service you choose to query.

&nbsp;
&nbsp;

## Creating an Alias for Easy Use

To make the Public IP Address Retriever more convenient to use, you can set up an alias in your shell's profile file. This allows you to run the script using a short command. Here's how to set it up:

### For Bash Users

1. Open your `.bashrc` file in a text editor. You can use editors like `nano` or `vim`:

```nano ~/.bashrc```

2. Add the following line at the end of the `.bashrc` file, replacing `/path/to/get_public_ip.sh` with the actual path to the script:

```alias getip='/path/to/get_public_ip.sh'```

3. Save and close the file.

4. To apply the changes, source your `.bashrc` file:

```source ~/.bashrc```

5. Now, you can simply type `getip` in your terminal to run the Public IP Address Retriever.

### For Zsh Users

If you're using Zsh, the process is similar, but you'll edit your `.zshrc` file.

&nbsp;
&nbsp;

## Contributing
Contributions to the Public IP Address Retriever are welcome! Feel free to fork the repository, make your changes, and submit a pull request.

&nbsp;
&nbsp;

## License
[MIT License](LICENSE.md)

&nbsp;
&nbsp;

## Support
If you encounter any issues or have questions, please open an issue in the GitHub repository.

&nbsp;
&nbsp;

## Show Your Support

If you find this project useful, please consider giving it a star :star:. Your support is what keeps us motivated!

Star us on GitHub – it helps!

[![Star this repo](https://img.shields.io/github/stars/c0de2m0d/Public-IP-Retriever.svg?style=social&label=Star&maxAge=2592000)](https://github.com/c0de2m0d/Public-IP-Retriever/)

&nbsp;
&nbsp;
&nbsp;

&nbsp;
&nbsp;
&nbsp;


&nbsp;
&nbsp;
&nbsp;


&nbsp;
&nbsp;
&nbsp;


&nbsp;
&nbsp;
&nbsp;

### Stargazers over Time

[![Stargazers over time](https://starchart.cc/c0de2m0d/Public-IP-Retriever.svg)](https://starchart.cc/c0de2m0d/Public-IP-Retriever)



