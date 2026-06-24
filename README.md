# MonadDB State I/O Benchmarker

In 2026, building decentralized applications with ultra-high throughput requirements requires a clear understanding of your database's performance characteristics. Traditional EVM architectures suffer from severe storage bottlenecks because state lookups are handled sequentially inside single-threaded database frameworks (like LevelDB or RocksDB).

**Monad** addresses this limitation via **MonadDB**, which introduces native parallel I/O scheduling alongside asynchronous state access layers. This repository provides a high-concurrency storage benchmarking tool to stress-test, measure, and analyze performance differences between standard sequential lookups and parallelized asynchronous data access pipelines.

## Profiling Mechanics
* **Sequential Baseline:** Simulates legacy EVM single-threaded disk reads, tracking blocking delays.
* **Parallel Engine:** Fires concurrent asynchronous lookups into a non-blocking mock storage pool to measure overall throughput gains.

## Quick Start
1. Install testing metrics dependencies: `npm install`
2. Run the benchmarking test runner: `node runIoBenchmark.js`
