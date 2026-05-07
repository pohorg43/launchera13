.class final Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private mBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;->mBinder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$QueryHandler;->mBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p3}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    :cond_d
    return-void
.end method
