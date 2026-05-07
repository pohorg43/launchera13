.class public final Lcom/oplus/seedling/sdk/LogUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final HEAD:Ljava/lang/String; = "SeedlingSdk."

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/LogUtils;

.field private static isDebuggable:Z

.field private static pluginCommitHash:Ljava/lang/String;

.field private static pluginVersionName:Ljava/lang/String;

.field private static sDebugThread:Z

.field private static sLevel:I

.field private static sdkCommitHash:Ljava/lang/String;

.field private static sdkVersionName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/LogUtils;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/LogUtils;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/LogUtils;->INSTANCE:Lcom/oplus/seedling/sdk/LogUtils;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->isDebuggable:Z

    sput-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    const/4 v0, 0x2

    sput v0, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const-string v0, "1.1.30"

    sput-object v0, Lcom/oplus/seedling/sdk/LogUtils;->sdkVersionName:Ljava/lang/String;

    const-string v0, "0dc6914"

    sput-object v0, Lcom/oplus/seedling/sdk/LogUtils;->sdkCommitHash:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, ","

    if-eqz p1, :cond_20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/oplus/seedling/sdk/LogUtils;->buildMsgSuffix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "("

    const-string v3, ") "

    invoke-static {v2, p1, v3, p0, v0}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-static {}, Lcom/oplus/seedling/sdk/LogUtils;->buildMsgSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic buildLogMsg$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    :cond_5
    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final buildMsgSuffix()Ljava/lang/String;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/seedling/sdk/LogUtils;->sdkVersionName:Ljava/lang/String;

    sget-object v1, Lcom/oplus/seedling/sdk/LogUtils;->sdkCommitHash:Ljava/lang/String;

    sget-object v2, Lcom/oplus/seedling/sdk/LogUtils;->pluginVersionName:Ljava/lang/String;

    sget-object v3, Lcom/oplus/seedling/sdk/LogUtils;->pluginCommitHash:Ljava/lang/String;

    const-string v4, "[sdk:v"

    const-string v5, "-"

    const-string v6, ",plugin:v"

    invoke-static {v4, v0, v5, v1, v6}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1e

    const-string v0, "SeedlingSdk."

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p2, "tag"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1e

    const-string p2, "SeedlingSdk."

    invoke-static {p2, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p2, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, p2}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static final debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->isDebuggable:Z

    if-eqz v0, :cond_1d

    const-string v0, "SeedlingSdk."

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1e

    const-string v0, "SeedlingSdk."

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p2, "tag"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const/4 v0, 0x6

    if-gt p2, v0, :cond_1e

    const-string p2, "SeedlingSdk."

    invoke-static {p2, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p2, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, p2}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static final getSeedlingPluginVersionInfo()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/oplus/seedling/sdk/LogUtils;->pluginCommitHash:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/seedling/sdk/LogUtils;->pluginVersionName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Li1/j;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1e

    const-string v0, "SeedlingSdk."

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static final injectPluginVersionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sput-object p0, Lcom/oplus/seedling/sdk/LogUtils;->pluginVersionName:Ljava/lang/String;

    sput-object p1, Lcom/oplus/seedling/sdk/LogUtils;->pluginCommitHash:Ljava/lang/String;

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1e

    const-string v0, "SeedlingSdk."

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/oplus/seedling/sdk/LogUtils;->sLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1e

    const-string v0, "SeedlingSdk."

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oplus/seedling/sdk/LogUtils;->sDebugThread:Z

    invoke-static {p1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->buildLogMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method


# virtual methods
.method public final isDebuggable()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/seedling/sdk/LogUtils;->isDebuggable:Z

    return p0
.end method

.method public final setDebuggable(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/seedling/sdk/LogUtils;->isDebuggable:Z

    return-void
.end method
