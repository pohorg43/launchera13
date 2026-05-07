.class Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/settings/LauncherIndexablesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem$Builder;
    }
.end annotation


# instance fields
.field public mDependency:Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;

.field public mRef:[Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/settingslib/provider/OplusSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherIndexablesProvider$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;-><init>()V

    return-void
.end method


# virtual methods
.method public create()[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    return-object p0
.end method

.method public getDependency()Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mDependency:Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/16 v0, 0xc

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isDependency()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mDependency:Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setDependency(Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mDependency:Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;

    return-object p0
.end method

.method public setEntries(Ljava/lang/Object;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setIconResID(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x8

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setIntentTargetClassName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setIntentTargetPackageName(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setKeyWords(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setRank(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setSummaryOff(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object p0
.end method

.method public setUserID(I)Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchItem;->mRef:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xd

    aput-object p1, v0, v1

    return-object p0
.end method
