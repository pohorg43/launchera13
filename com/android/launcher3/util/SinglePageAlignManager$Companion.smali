.class public final Lcom/android/launcher3/util/SinglePageAlignManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SinglePageAlignManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/util/SinglePageAlignManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/launcher3/util/SinglePageAlignManager;
    .registers 3

    invoke-static {}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$getSInstance$cp()Lcom/android/launcher3/util/SinglePageAlignManager;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    invoke-static {}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$getSInstance$cp()Lcom/android/launcher3/util/SinglePageAlignManager;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_1a

    :cond_f
    new-instance v0, Lcom/android/launcher3/util/SinglePageAlignManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SinglePageAlignManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/android/launcher3/util/SinglePageAlignManager;->Companion:Lcom/android/launcher3/util/SinglePageAlignManager$Companion;

    invoke-static {v0}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$setSInstance$cp(Lcom/android/launcher3/util/SinglePageAlignManager;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    :goto_1a
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetInstance()V
    .registers 1

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$setSInstance$cp(Lcom/android/launcher3/util/SinglePageAlignManager;)V

    return-void
.end method

.method public final showToast(Landroid/content/Context;II)V
    .registers 8

    invoke-static {}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$getOldMsgId$cp()I

    move-result p0

    if-eq p2, p0, :cond_15

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$setTime$cp(J)V

    goto :goto_32

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$getTime$cp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long p0, v0, v2

    if-lez p0, :cond_32

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$setTime$cp(J)V

    :cond_32
    :goto_32
    invoke-static {p2}, Lcom/android/launcher3/util/SinglePageAlignManager;->access$setOldMsgId$cp(I)V

    return-void
.end method
