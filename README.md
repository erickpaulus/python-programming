# python-programming
This repository contain my experiment using Python programming language:
1. creates the environment, then activates it and installs dependencies. [One go](setup.bat)  or [manual](setup.md)
2. ## Project Structure
- **Versioning**: The project uses semantic versioning, with the version number defined in the `__init__.py` file as `__version__`. This makes it easy to track the current version of the project directly in the code.
- **Logging**: The project includes a logging setup to capture key information, warnings, and errors during execution, which is useful for debugging and monitoring the behavior of the scripts.

## Versioning

The project version is specified in the `__init__.py` file, located in the main package directory:

```python
# your_package/__init__.py
__version__ = "0.0.2"
