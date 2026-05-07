.class public final Lcom/android/launcher3/shortcuts/IDynamicShortcut$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/shortcuts/IDynamicShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static findSpaceForHeytapMarketItem(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;I)[I
    .registers 7

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x3

    new-array p0, p0, [I

    fill-array-data p0, :array_e

    return-object p0

    nop

    :array_e
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data
.end method

.method public static hasHotGameShortCutPermission(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z
    .registers 3

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static initHeytapMarketShortcut(Lcom/android/launcher3/shortcuts/IDynamicShortcut;)V
    .registers 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static isCanAddedNoCornerShortcutItem(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Landroid/content/pm/LauncherApps$PinItemRequest;)Z
    .registers 2

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isForceAddShortcut(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isHeytapMarketPopupShortcutItem(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .registers 3

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isHeytapMarketShortcutItem(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isHeytapMarketShortcutItem(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)Z
    .registers 3

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isHeytapMarketShortcutType(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isMarketIconCanReplaceByShortcut(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportHeytapMarketShortcut(Lcom/android/launcher3/shortcuts/IDynamicShortcut;)Z
    .registers 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static readHeytapMarketShortcutStatus(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Ljava/lang/String;)I
    .registers 2

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static sendUpdateShortcutBroadcast(Lcom/android/launcher3/shortcuts/IDynamicShortcut;)V
    .registers 2

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static writeHeytapMarketShortcutStatus(Lcom/android/launcher3/shortcuts/IDynamicShortcut;Ljava/lang/String;I)V
    .registers 3

    const-string/jumbo p1, "this"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
