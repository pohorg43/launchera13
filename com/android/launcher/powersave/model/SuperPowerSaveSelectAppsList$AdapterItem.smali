.class public Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public appIndex:I

.field public appInfo:Lcom/android/launcher3/model/data/AppInfo;

.field public position:I

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/model/data/AppInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->appIndex:I

    return-void
.end method

.method public static asAllAppsDivider(I)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;
    .registers 3

    new-instance v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method public static asApp(ILcom/android/launcher3/model/data/AppInfo;I)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;
    .registers 5

    new-instance v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->position:I

    iput-object p1, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->appInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput p2, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->appIndex:I

    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;
    .registers 3

    new-instance v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/android/launcher/powersave/model/SuperPowerSaveSelectAppsList$AdapterItem;->position:I

    return-object v0
.end method
