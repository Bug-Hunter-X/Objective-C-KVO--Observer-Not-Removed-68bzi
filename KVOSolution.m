// KVOSolution.m
#import "KVOSolution.h"

@implementation MyObservedClass

- (void)setValue:(NSString *)value forKey:(NSString *)key {
    [self willChangeValueForKey:key];
    _value = value;
    [self didChangeValueForKey:key];
}

@end

@implementation MyObserverClass

- (instancetype)initWithObserved:(MyObservedClass *)observed {
    self = [super init];
    if (self) {
        [observed addObserver:self forKeyPath:@"value" options:NSKeyValueObservingOptionNew context:NULL];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    // Handle the change
    if ([keyPath isEqualToString:@