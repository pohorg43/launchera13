.class public final Lcom/oplus/quickstep/common/MultiUserContentHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mNotifyForDescendants:Z

.field private mUri:Landroid/net/Uri;

.field private mUserId:I

.field private mUserSet:Z

.field private mWeakCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/ContentObserver;Landroid/net/Uri;Z)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mWeakCtx:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mUri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mNotifyForDescendants:Z

    return-void
.end method


# virtual methods
.method public final isTarget(Landroid/database/ContentObserver;)Z
    .registers 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final onUserSwitch()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_59

    :cond_11
    iget-object v0, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "mWeakCtx.get()!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mWeakObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "mWeakObserver.get()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-boolean v2, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mUserSet:Z

    if-eqz v2, :cond_4e

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mNotifyForDescendants:Z

    iget p0, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mUserId:I

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_59

    :cond_4e
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mUri:Landroid/net/Uri;

    iget-boolean p0, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mNotifyForDescendants:Z

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public final setUserId(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mUserId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/quickstep/common/MultiUserContentHolder;->mUserSet:Z

    return-void
.end method
