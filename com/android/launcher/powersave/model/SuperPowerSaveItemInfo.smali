.class public final Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;
.super Lcom/android/launcher3/model/data/AppInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo$Companion;

.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveItemInfo "


# instance fields
.field private isSelected:Z

.field private viewType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->Companion:Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method


# virtual methods
.method public final getViewType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->viewType:I

    return p0
.end method

.method public final isSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->isSelected:Z

    return p0
.end method

.method public final setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->isSelected:Z

    return-void
.end method

.method public final setViewType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveItemInfo;->viewType:I

    return-void
.end method
