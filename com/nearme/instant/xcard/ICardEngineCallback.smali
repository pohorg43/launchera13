.class public interface abstract Lcom/nearme/instant/xcard/ICardEngineCallback;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ERROR_CARD_SERVICE_BINDING:I = 0x5

.field public static final ERROR_CLASS_NOT_FOUND:I = 0x2

.field public static final ERROR_GET_CLASS_LOADER_FAIELD:I = 0x3

.field public static final ERROR_LOCAL_SERVICE_NOT_FOUND:I = 0x7

.field public static final ERROR_PLATFORM_NOT_INSTALLED:I = 0x6

.field public static final ERROR_REMOTE_SERVICE_NOT_FOUND:I = 0x8

.field public static final ERROR_SO_NOT_FOUND:I = 0x1

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final ERROR_V8_RUNTIME_CREATION:I = 0x4


# virtual methods
.method public abstract onInitFailure(ILjava/lang/Throwable;)V
.end method

.method public abstract onInitSuccess()V
.end method
