.class public interface abstract Lcom/android/launcher3/shortcuts/IDynamicShortcut;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;,
        Lcom/android/launcher3/shortcuts/IDynamicShortcut$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;

.field public static final HOT_GAMES_CLASSNAME_SING:Ljava/lang/String; = "B0A9BBFC05EEE5E7D0A2C97C030586E15BB3301152078F54473BB82DF6D8C818"

.field public static final HOT_GAMES_PACKAGENAME:Ljava/lang/String; = "com.oplus.game.empowerment.folder"

.field public static final SHORTCUT_CAN_ADDED:I = 0x0

.field public static final SHORTCUT_CAN_NOT_ADDED:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;->$$INSTANCE:Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;

    sput-object v0, Lcom/android/launcher3/shortcuts/IDynamicShortcut;->Companion:Lcom/android/launcher3/shortcuts/IDynamicShortcut$Companion;

    return-void
.end method


# virtual methods
.method public abstract findSpaceForHeytapMarketItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/ItemInfo;I)[I
.end method

.method public abstract hasHotGameShortCutPermission(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)Z
.end method

.method public abstract initHeytapMarketShortcut()V
.end method

.method public abstract isCanAddedNoCornerShortcutItem(Landroid/content/pm/LauncherApps$PinItemRequest;)Z
.end method

.method public abstract isForceAddShortcut(Landroid/content/pm/ShortcutInfo;)Z
.end method

.method public abstract isHeytapMarketPopupShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;I)Z
.end method

.method public abstract isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
.end method

.method public abstract isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)Z
.end method

.method public abstract isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z
.end method

.method public abstract isMarketIconCanReplaceByShortcut(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z
.end method

.method public abstract isSupportHeytapMarketShortcut()Z
.end method

.method public abstract readHeytapMarketShortcutStatus(Ljava/lang/String;)I
.end method

.method public abstract sendUpdateShortcutBroadcast()V
.end method

.method public abstract writeHeytapMarketShortcutStatus(Ljava/lang/String;I)V
.end method
