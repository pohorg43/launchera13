.class Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->onContentChanged()V

    return-void
.end method
