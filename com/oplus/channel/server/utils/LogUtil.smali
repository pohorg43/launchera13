.class public final Lcom/oplus/channel/server/utils/LogUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HEAD:Ljava/lang/String; = "Channel.Server[1000026]"

.field public static final INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

.field private static final KEY_DEBUG_SWITCHER:Ljava/lang/String; = "log_switch_type"

.field private static final TAG:Ljava/lang/String; = "ChannelServerLogUtil"

.field private static debugSwitchObserver:Landroid/database/ContentObserver;

.field private static debuggable:Z

.field private static head:Ljava/lang/String;

.field private static logInterface:Lcom/oplus/channel/server/utils/LogInterface;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/utils/LogUtil;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/LogUtil;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/LogUtil;->INSTANCE:Lcom/oplus/channel/server/utils/LogUtil;

    const-string v0, "Channel.Server[1000026]"

    sput-object v0, Lcom/oplus/channel/server/utils/LogUtil;->head:Ljava/lang/String;

    new-instance v0, Lcom/oplus/channel/server/utils/LogUtil$1;

    invoke-direct {v0}, Lcom/oplus/channel/server/utils/LogUtil$1;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDebuggable$p()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/channel/server/utils/LogUtil;->debuggable:Z

    return v0
.end method

.method public static final synthetic access$getHead$p()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/channel/server/utils/LogUtil;->head:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/utils/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dynamicUpdateDebugSwitch(Landroid/content/Context;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "log_switch_type"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    move v0, p1

    :cond_14
    sput-boolean v0, Lcom/oplus/channel/server/utils/LogUtil;->debuggable:Z

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/utils/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/utils/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final registerDebugContentObserver(Landroid/content/Context;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    const-string v0, "log_switch_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/oplus/channel/server/utils/LogUtil$registerDebugContentObserver$1;

    invoke-direct {v1, p1}, Lcom/oplus/channel/server/utils/LogUtil$registerDebugContentObserver$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/channel/server/utils/LogUtil;->debugSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel.Server[1000026]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pkg"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "."

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v5, v4}, Lp3/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/channel/server/utils/LogUtil;->head:Ljava/lang/String;

    sget-object v1, Lcom/oplus/channel/server/utils/LogUtil;->debugSwitchObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_4d

    goto :goto_60

    :cond_4d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v1, v5}, Landroid/database/ContentObserver;->onChange(Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_57} :catch_58

    goto :goto_60

    :catch_58
    move-exception p1

    const-string v0, "ChannelServerLogUtil"

    const-string v1, "registerContentObserver error"

    invoke-virtual {p0, v0, v1, p1}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_60
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/utils/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2}, Lcom/oplus/channel/server/utils/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/utils/LogUtil;->logInterface:Lcom/oplus/channel/server/utils/LogInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/utils/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
