# `<package_name>`

> A collection of core List data structures in Dart: ArrayList, LinkedList, and DoublyLinkedList.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Implemented Structures](#implemented-structures)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [ArrayList](#arraylist)
  - [LinkedList](#linkedlist)
  - [DoublyLinkedList](#doublylinkedlist)
- [Performance Characteristics](#performance-characteristics)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

This package provides straightforward implementations of three fundamental list types in Dart:

1. **ArrayList** – backed by a resizable array
2. **LinkedList** – singly‐linked nodes
3. **DoublyLinkedList** – nodes with forward/backward links

Each structure exposes a common `ListInterface<T>` so you can swap implementations with minimal code changes.

---

## Features

- **Type-safe**, generic implementations
- Common interface for add, remove, iterate, and index access
- Customizable initial capacity (ArrayList)
- Efficient insert/delete at head/tail (LinkedList, DoublyLinkedList)
- Thorough unit tests and null-safety

---

## Implemented Structures

| Structure             | Backing                | Index Access | Insert/Delete at Head | Insert/Delete at Tail |
| --------------------- | ---------------------- | ------------ | --------------------- | --------------------- |
| `ArrayList<T>`        | Dynamic array          | O(1)         | O(n)                  | Amortized O(1)        |
| `LinkedList<T>`       | Nodes (`next`)         | O(n)         | O(1)                  | O(n)                  |
| `DoublyLinkedList<T>` | Nodes (`prev`, `next`) | O(n)         | O(1)                  | O(1)                  |

---

## Getting Started

### Prerequisites

- Dart SDK ≥ 2.12.0

### Installation

Add to your project’s `pubspec.yaml`:

```yaml
dependencies:
  <package_name>:
    git:
      url: https://github.com/<your-org>/<package_name>.git
      ref: main
```
