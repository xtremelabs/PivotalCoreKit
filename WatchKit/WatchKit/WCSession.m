#import "WCSession.h"

@interface PCKMessageCapturer ()

-(void)activateSession NS_REQUIRES_SUPER;
+(BOOL)isSupported NS_REQUIRES_SUPER;
- (BOOL)updateApplicationContext:(NSDictionary<NSString *, id> *)applicationContext error:(NSError **)error NS_REQUIRES_SUPER;
-(void)sendMessage:(NSDictionary<NSString *,id> *)message replyHandler:(void (^)(NSDictionary<NSString *,id> * _Nonnull))replyHandler errorHandler:(void (^)(NSError * _Nonnull))errorHandler NS_REQUIRES_SUPER;
-(WCSessionUserInfoTransfer *)transferUserInfo:(NSDictionary<NSString *,id> *)userInfo NS_REQUIRES_SUPER;
-(WCSessionUserInfoTransfer *)transferCurrentComplicationUserInfo:(NSDictionary<NSString *,id> *)userInfo NS_REQUIRES_SUPER;
-(WCSessionFileTransfer *)transferFile:(NSURL *)file metadata:(NSDictionary<NSString *,id> *)metadata NS_REQUIRES_SUPER;
-(void)sendMessageData:(NSData *)data replyHandler:(void (^)(NSData * _Nonnull))replyHandler errorHandler:(void (^)(NSError * _Nonnull))errorHandler NS_REQUIRES_SUPER;

@end

@implementation WCSession

static WCSession *defaultSession;

+ (WCSession *)defaultSession {
    if (!defaultSession) {
        defaultSession = [[WCSession alloc] init];
    }
    return defaultSession;
}

+ (void)afterEach {
    defaultSession = nil;
}

- (void)activateSession {
    [super activateSession];
}

+ (BOOL)isSupported {
    return [super isSupported];
}

- (BOOL)updateApplicationContext:(NSDictionary<NSString *, id> *)applicationContext error:(NSError **)error {
    return [super updateApplicationContext:applicationContext error:error];
}

- (void)sendMessage:(NSDictionary<NSString *,id> *)message replyHandler:(void (^)(NSDictionary<NSString *,id> * _Nonnull))replyHandler errorHandler:(void (^)(NSError * _Nonnull))errorHandler {
    [super sendMessage:message replyHandler:replyHandler errorHandler:errorHandler];
}

- (WCSessionUserInfoTransfer *)transferUserInfo:(NSDictionary<NSString *,id> *)userInfo {
    return [super transferUserInfo:userInfo];
}

- (WCSessionUserInfoTransfer *)transferCurrentComplicationUserInfo:(NSDictionary<NSString *,id> *)userInfo {
    return [super transferCurrentComplicationUserInfo:userInfo];
}

- (WCSessionFileTransfer *)transferFile:(NSURL *)file metadata:(NSDictionary<NSString *,id> *)metadata {
    return [super transferFile:file metadata:metadata];
}

- (void)sendMessageData:(NSData *)data replyHandler:(void (^)(NSData * _Nonnull))replyHandler errorHandler:(void (^)(NSError * _Nonnull))errorHandler {
    [super sendMessageData:data replyHandler:replyHandler errorHandler:errorHandler];
}

@end