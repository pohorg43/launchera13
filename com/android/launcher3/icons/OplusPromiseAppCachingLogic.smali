.class public Lcom/android/launcher3/icons/OplusPromiseAppCachingLogic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/cache/CachingLogic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/icons/cache/CachingLogic<",
        "Lcom/android/launcher/model/data/PromiseAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponent(Lcom/android/launcher/model/data/PromiseAppInfo;)Landroid/content/ComponentName;
    .registers 2

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .registers 2

    check-cast p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/OplusPromiseAppCachingLogic;->getComponent(Lcom/android/launcher/model/data/PromiseAppInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Lcom/android/launcher/model/data/PromiseAppInfo;)Ljava/lang/CharSequence;
    .registers 2

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    check-cast p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/OplusPromiseAppCachingLogic;->getLabel(Lcom/android/launcher/model/data/PromiseAppInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUser(Lcom/android/launcher/model/data/PromiseAppInfo;)Landroid/os/UserHandle;
    .registers 2

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .registers 2

    check-cast p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/OplusPromiseAppCachingLogic;->getUser(Lcom/android/launcher/model/data/PromiseAppInfo;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Lcom/android/launcher/model/data/PromiseAppInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_14

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppUtils;->isDefaultDownloadIcon(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_14

    :cond_f
    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object p0, p0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1b

    :cond_14
    :goto_14
    iget-object p0, p2, Lcom/android/launcher3/model/data/ItemInfo;->mIconPath:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/android/launcher/download/DownloadAppUtils;->loadIconFromIconPath(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1b
    invoke-static {p0}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Lcom/android/launcher/model/data/PromiseAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/OplusPromiseAppCachingLogic;->loadIcon(Landroid/content/Context;Lcom/android/launcher/model/data/PromiseAppInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
