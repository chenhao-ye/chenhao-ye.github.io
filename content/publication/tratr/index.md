---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Using Trātṛ to tame Adversarial Synchronization
subtitle: ''
summary: ''
authors:
- Yuvraj Patel
- chenhao-ye
- Akshat Sinha
- Abigail Matthews
- Andrea C. Arpaci-Dusseau
- Remzi H. Arpaci-Dusseau
- Michael M. Swift
tags: []
categories: []
date: '2022-08-01'
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
publishDate: '2022-12-28T22:45:44.296574Z'
publication_types: ['1']
abstract: 'We show that Linux containers are vulnerable to a new class of attacks – synchronization attacks – that exploit kernel synchronization to harm application performance, where an unprivileged attacker can control the duration of kernel critical sections to stall victims running in other containers on the same operating system. Furthermore, a subset of these attacks – framing attacks – persistently harm performance by expanding data structures even after the attacker quiesces. We demonstrate three such attacks on the Linux kernel involving the inode cache, the directory cache, and the futex table.

We design Trātṛ, a Linux kernel extension, to detect and mitigate synchronization and framing attacks with low overhead, prevent attacks from worsening, and recover by repairing data structures to their pre-attack state. Using microbenchmarks and real-world workloads, we show that Trātṛ can detect an attack within seconds and recover instantaneously, guaranteeing similar performance to baseline. Our experiments show that Trātṛ can detect simultaneous attacks and mitigate them with minimal overhead.'
publication: '*31st USENIX Security Symposium*'
publication_short: "**USENIX Security &apos;22**"
links:
- name: URL
  url: https://www.usenix.org/conference/usenixsecurity22/presentation/patel
---
