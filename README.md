Overview
This project uses Robot Framework, a generic open-source automation framework, to implement automated testing. Robot Framework is keyword-driven and is primarily used for acceptance testing and acceptance test-driven development (ATDD).
The suite covers various test cases for the application under test, ensuring it meets the specified requirements and behaves as expected.

Prerequisites
Before running the test suite, ensure you have the following installed:
Python: Robot Framework is built on Python. Install Python 3.6 or higher from python.org.
Pip: Python's package installer is required to install Robot Framework and other dependencies. Pip is usually installed with Python.
Robot Framework: Install Robot Framework using pip "pip install robotframework" and install pip install SeleniumLibrary also pip install robotframework-SeleniumLibrary

Project Structure

robotframework-tests/
|-- tests/
|   |-- resources/
|   |   |-- keywords/
|   |   |   |-- login-res.robot ==> to define varibale element and step of test case
|   |   |-- variables/
|   |   |   |-- test-data.robot -==> to define test data that you use, this will be calling on keywords file.robot
|   |-- suites/
|   |   |-- LoginSuite.robot ==> to run your step of test case 


To Run you may use 
robot -i [tags_name] Test/suite

