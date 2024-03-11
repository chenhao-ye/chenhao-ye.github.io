---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Scale and Performance in a Filesystem Semi-Microkernel
subtitle: ''
summary: ''
authors:
- Jing Liu
- Anthony Rebello
- Yifan Dai
- chenhao-ye
- Sudarsun Kannan
- Andrea C. Arpaci-Dusseau
- Remzi H. Arpaci-Dusseau
categories: []
date: '2021-01-01'
lastmod: 2022-12-28T16:45:44-06:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2022-12-28T22:45:44.174524Z'
publication_types: ["conference"]
abstract: 'We present uFS, a user-level filesystem semi-microkernel. uFS takes advantage of a high-performance storage development kit to realize a fully-functional, crash-consistent, highly-scalable filesystem, with relative developer ease. uFS delivers scalable high performance with a number of novel techniques: careful partitioning of in-memory and on-disk data structures to enable concurrent access without locking, inode migration for balancing load across filesystem threads, and a dynamic scaling algorithm for determining the number of filesystem threads to serve the current workload. Through measurements, we show that uFS has good base performance and excellent scalability; for example, uFS delivers nearly twice the throughput of ext4 for LevelDB on YCSB workloads.'
publication: "*Proceedings of the ACM SIGOPS 28th Symposium on Operating Systems Principles*"
publication_short: "**SOSP &apos;21**"

url_code: 'https://github.com/WiscADSL/uFS'
links:
- name: URL
  url: https://doi.org/10.1145/3477132.3483581
---
