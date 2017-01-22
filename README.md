# telemetry-server

## A. Summary

`telemetry-server` receives data sent over UDP from [telemetry-client](https://github.com/curtis86/telemetry-client) and writes that data to a named pipe.

```
{Data from telemetry-client} >>>UDP>>> {telemetry-server} > {telemetry-server FIFO} > {Your data interpeter}
```

## B. Dependencies

 * BASH
 * Python 2.6+

## C. Supported Systems

Tested on MacOS, CentOS 6 and CentOS 7.

### Installation

1. Clone this repo to your preferred directory (eg: /opt/telemetry-server)

  `git clone https://github.com/curtis86/telemetry-server`


### Usage

1. Define `${LISTEN_ADDRESS}` and `${LISTEN_PORT}`

2. Start `telemetry-server`

```
# /opt/telemetry-server/telemetry-server
```

3. Read data written to named pipe by as defined in `includes/telemetry-server_vars.sh:${DATA_PIPE}`

## Notes

 * Please ensure that `${LISTEN_ADRESS}` and `${LISTEN_PORT}` are not open to the public internet! It is recommended to only allow access from a "controlled" network (ie. VPN). For that reason, the safe default will be to listen on 127.0.0.1
 * Please run this as an unprivileged user (ie. 'telemetry')

## Disclaimer

I'm not a programmer, but I do like to make things! Please use this at your own risk.

## License

The MIT License (MIT)

Copyright (c) 2017 Curtis K

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to u
se, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR C
OPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
