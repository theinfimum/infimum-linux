# infimum-linux

Infimum Linux, while it can be considered Yet Another Minimal Linux and learning project for me, aims to provide the most efficient Linux possible for a configuration. Over the next few months, I hope to provide some scripts, utilities, patches and eventually container images for using it.

TODO
Build a minimal docker host

Currently using buildroot as the basis for the root, and adding into that.

Goals:

- While there is plenty of stuff available for VM's, and less so but some for bare-metal provisioning, Infimum Linux aims to address a few hardware and host edge cases to maximize performance on each local machine in the spirit of other minimal, compiled-from-source systems (LFS, Gentoo, etc.).

- Through container abstraction, allow for HTC/HPC applications on heterogeneous host architecture and other clustered applications.

- Be secure and performant enough for production workloads of any size.
