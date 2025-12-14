# String Calculator – TDD Kata (Incubyte)

This repository contains my implementation of the **String Calculator TDD Kata**
as part of the Incubyte technical assessment.

The primary goal of this exercise was **not just to make the code work**, but to
demonstrate a **disciplined Test-Driven Development (TDD) approach**, focusing on
small iterations, clean code, and meaningful commits.

---

## 🧠 Approach & Philosophy

- Followed **strict TDD**:  
  **Red → Green → Refactor** for every requirement.
- Each feature was introduced via a **failing test first**.
- Changes were kept **small and incremental**, resulting in a clear commit history.
- Refactoring was done only after tests passed, keeping behavior unchanged.
- Code readability and intent were prioritized over cleverness.

The full evolution of the solution can be understood by reading the commit history
or the `CHANGELOG.md`.

---

## ✅ Requirements Covered

The `add` method supports:

- Empty string → returns `0`
- Single number → returns the number itself
- Any amount of numbers separated by commas
- Newline (`\n`) as a valid delimiter
- Custom delimiter syntax:
