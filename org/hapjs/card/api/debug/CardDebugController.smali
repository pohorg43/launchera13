.class public interface abstract Lorg/hapjs/card/api/debug/CardDebugController;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_CARD_DEBUG_RESULT:Ljava/lang/String; = "org.hapjs.intent.action.CARD_DEBUG_RESULT"

.field public static final ACTION_DEBUG_CARD:Ljava/lang/String; = "org.hapjs.intent.action.DEBUG_CARD"

.field public static final ACTION_DEBUG_REGISTRY_HOST:Ljava/lang/String; = "org.hapjs.action.REGISTER_HOST"

.field public static final CODE_UNKNOWN_ERROR:I = 0x0

.field public static final CODE_UNKNOWN_MESSAGE:I = 0x1

.field public static final CODE_UNSUPPORT_CARD:I = 0x3

.field public static final CODE_UNSUPPORT_DEBUG:I = 0x2

.field public static final EXTRA_ARCHIVE_HOST:Ljava/lang/String; = "archiveHost"

.field public static final EXTRA_CARD_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_IS_SUPPORTED:Ljava/lang/String; = "isSupported"

.field public static final EXTRA_MESSAGE_CODE:Ljava/lang/String; = "messageCode"

.field public static final EXTRA_PLATFORM_VERSION_CODE:Ljava/lang/String; = "platformVersionCode"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RUNTIME_HOST:Ljava/lang/String; = "runtimeHost"

.field public static final EXTRA_SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static final EXTRA_SERVER:Ljava/lang/String; = "server"

.field public static final EXTRA_SHOULD_RELOAD:Ljava/lang/String; = "shouldReload"

.field public static final EXTRA_SHOW_VERSION:Ljava/lang/String; = "showVersionInfo"

.field public static final EXTRA_USE_ADB:Ljava/lang/String; = "useADB"

.field public static final EXTRA_WAIT_DEVTOOLS:Ljava/lang/String; = "waitDevTools"

.field public static final MSG_CLOSE_DEBUG_CARD:I = 0x4

.field public static final MSG_DEBUG_CARD:I = 0x3

.field public static final MSG_GET_MEMORY:I = 0x5

.field public static final MSG_IS_SUPPORT:I = 0x1

.field public static final MSG_LAUNCH_CARD:I = 0x2

.field public static final PERMISSION_DEBUG_CARD:Ljava/lang/String; = "org.hapjs.permission.DEBUG_CARD"


# virtual methods
.method public abstract handleDebugMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract setCardDebugHost(Lorg/hapjs/card/api/debug/CardDebugHost;)V
.end method
