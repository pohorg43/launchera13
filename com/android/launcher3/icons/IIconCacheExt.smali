.class public interface abstract Lcom/android/launcher3/icons/IIconCacheExt;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract applyCacheEntryNeedUpdateTitle(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
.end method

.method public abstract attach(Lcom/android/launcher3/icons/IconCache;)V
.end method

.method public abstract cleanFancyIconEngine()V
.end method

.method public abstract clearFancyDrawable()V
.end method

.method public abstract getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
.end method

.method public abstract getFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getFancyIcons()Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher/FancyIconKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIcon(Landroid/content/pm/LauncherActivityInfo;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getSpecificIcon(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
.end method

.method public abstract getTitleAndIconForPromiseAppInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    .param p1  # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher/model/data/PromiseAppInfo;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract loadFancyIconCache(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract putFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract removeFancyIcon(Lcom/android/launcher3/model/data/ItemInfo;)V
.end method

.method public abstract removeFancyIconAllLocation(Lcom/android/launcher3/model/data/ItemInfo;)V
.end method

.method public abstract saveDeepShortcutIconToSdcardWhenDebug(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
.end method

.method public abstract saveIconSize(I)V
.end method

.method public abstract updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
.end method
