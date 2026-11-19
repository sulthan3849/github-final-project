# Simple Interest Calculator

A Bash calculator that calculates simple interest given the principal amount,
annual rate of interest, and time period in years. This repository is the GitHub
UI part of the IBM Getting Started with Git and GitHub final project.

## Inputs and output

- **p — principal:** the initial amount of money.
- **r — annual rate of interest:** a percentage; enter `5` for 5% per year.
- **t — time period:** the duration in years.
- **Output:** simple interest, rounded to two decimal places.

```text
simple interest = principal × annual percentage rate × years / 100
```

The calculator accepts non-negative whole numbers and decimals. It reports an
error for missing, negative, or non-numeric inputs. It calculates interest only;
it does not compound interest or include the principal in the result.

## Run the calculator

Requirements: Bash and `awk`, available on Linux, macOS, and Git Bash on Windows.

```bash
bash simple-interest.sh
```

Example:

```text
Enter the principal:
1000
Enter rate of interest per year (%):
5
Enter time period in years:
3
The simple interest is: 150.00
```

## Verification

```bash
bash tests/test-simple-interest.sh
```

The checks cover whole numbers, decimals, zero rate, zero duration, and invalid
or incomplete input.

## Contributing and community

All contributions, bug reports, bug fixes, documentation improvements,
enhancements, and ideas are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) and
the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).

## License and acknowledgements

Licensed under the [Apache License, Version 2.0](LICENSE).
The license, contribution statement, and Contributor Covenant document are
reused from the [IBM course sample repository](https://github.com/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub).
The calculator implementation and acceptance checks are provided in this project.
