# Changelog

All notable changes to this project are documented in this file.

This project follows a **Test-Driven Development (TDD)** approach, where each
feature was introduced incrementally through tests and small, focused commits.

---

## [0.1.0] – Project Initialization

### Added
- Initialized Dart package for String Calculator TDD kata
- Added base project structure, pubspec, and configuration files

---

## [0.2.0] – Baseline Calculator

### Added
- Created baseline `StringCalculator` class
- Added first test case: empty string returns `0`

---

## [0.3.0] – Single Number Support

### Added
- Support for returning a single number as-is
- Tests validating single number inputs

---

## [0.4.0] – Two Numbers Support

### Added
- Support for summing two comma-separated numbers
- Tests for basic addition logic

---

## [0.5.0] – Multiple Numbers Support

### Added
- Support for summing multiple comma-separated numbers
- Extended test coverage without modifying existing logic

---

## [0.6.0] – New Line Delimiter Support

### Added
- Support for newline (`\n`) as a valid delimiter
- Tests validating mixed delimiters (comma and newline)

---

## [0.7.0] – Custom Delimiter Support

### Added
- Support for custom delimiters using the syntax `//<delimiter>\n`
- Tests covering custom delimiter scenarios

---

## [0.8.0] – Negative Numbers Validation

### Added
- Detection of negative numbers in input
- Exception thrown listing all negative values
- Tests validating exception message correctness

---

## [0.9.0] – Bug Fix: Custom Delimiter Parsing

### Fixed
- Correctly separated delimiter declaration from number input
- Prevented parsing errors caused by delimiter header being included in numbers

---

## [Unreleased]

### Planned
- Ignore numbers greater than 1000
- Support delimiters of any length
- Support multiple custom delimiters

---

## Commit History Reference

This changelog is derived directly from the commit history and reflects the
incremental evolution of the solution through TDD.

