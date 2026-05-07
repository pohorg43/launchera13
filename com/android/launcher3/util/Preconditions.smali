.class public Lcom/android/launcher3/util/Preconditions;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNonUiThread()V
    .registers 0

    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method

.method public static assertUIThread()V
    .registers 0

    return-void
.end method

.method public static assertWorkerThread()V
    .registers 0

    return-void
.end method

.method private static isSameLooper(Landroid/os/Looper;)Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
