# Objective-C KVO: Observer Not Removed

This repository demonstrates a common error in Objective-C when using Key-Value Observing (KVO).  Failure to properly remove KVO observers after they are no longer needed can lead to crashes or unexpected behavior, often long after the original issue occurs.

The `KVOBug.m` file showcases the problematic code, while `KVOSolution.m` provides the corrected implementation.  Read the comments in the code for details on how to avoid this pitfall.