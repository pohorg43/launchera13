.class Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;
.super Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataNotifier"
.end annotation


# instance fields
.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier$1;-><init>(Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onRegister()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onUnregister()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
