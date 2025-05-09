# Fundamental Data Structures & Algorithms in Dart

A concise, well-tested collection of core data structures and algorithm implementations in Dart. Designed for learning, reuse, and easy integration into your Dart or Flutter projects.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Contents](#contents)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Testing](#testing)
- [Folder Structure](#folder-structure)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

This package collects implementations of fundamental data structures (lists, stacks, queues, trees, graphs, hash tables) and classic algorithms (sorting, searching, traversals, shortest path, etc.) in pure Dart. Each module is documented, follows best-practice lints, and comes with unit tests.

---

## Features

- **Core Data Structures**:  
  – ArrayList, LinkedList, Stack, Queue, Deque  
  – Binary Trees, Heaps, Graphs, Hash Tables

- **Essential Algorithms**:  
  – Sorting (QuickSort, MergeSort, HeapSort)  
  – Searching (Binary Search, DFS, BFS)  
  – Graph (Dijkstra, A\*, Kruskal, Prim)  
  – Utility (Union-Find, Topological Sort)

- **Quality-First**:  
  – Null-safe, idiomatic Dart  
  – Thorough unit tests with 100% coverage  
  – Lint-compliant (analysis_options.yaml)

- **Documentation & Examples**:  
  – Dartdoc comments on all public APIs  
  – `example/` folder demonstrating usage

---

## Contents

- **Data Structures**

  - `lib/src/array_list.dart`
  - `lib/src/linked_list.dart`
  - `lib/src/stack.dart`
  - …

- **Algorithms**
  - `lib/src/sorting/quick_sort.dart`
  - `lib/src/searching/binary_search.dart`
  - `lib/src/graphs/dijkstra.dart`
  - …

---

## Getting Started

### Prerequisites

- Dart SDK ≥ 2.12
- (Optional) Flutter SDK if integrating into Flutter apps

### Installation

Add to your project’s `pubspec.yaml`:

```yaml
dependencies:
  fundamental_dsa:
    git:
      url: https://github.com/your-org/fundamental_dsa.git
      ref: main
```
