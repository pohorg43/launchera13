.class public Lcom/android/launcher/mode/SimpleLauncherMode;
.super Lcom/android/launcher/mode/AbsLauncherMode;
.source ""


# static fields
.field public static final ITEM_TABLE_NAME_SIMPLE:Ljava/lang/String; = "singledesktopitems_simple"

.field public static final SCREEN_TABLE_NAME_SIMPLE:Ljava/lang/String; = "singledesktopscreens_simple"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/mode/AbsLauncherMode;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createLoaderResults(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/LoaderResults;
    .registers 12

    new-instance p0, Lcom/android/launcher/model/OplusSimpleLoaderResults;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/model/OplusSimpleLoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-object p0
.end method

.method public createLoadertask(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)Lcom/android/launcher3/model/LoaderTask;
    .registers 12

    new-instance p0, Lcom/android/launcher3/model/OplusSimpleLoaderTask;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/OplusSimpleLoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    return-object p0
.end method

.method public flagOfEmptyDatabaseCreated()Ljava/lang/String;
    .registers 1

    const-string p0, "EMPTY_SIMPLE_DATABASE_CREATED"

    return-object p0
.end method

.method public flagOfModeCellX()Ljava/lang/String;
    .registers 1

    const-string p0, "LastSimpleModeCellX"

    return-object p0
.end method

.method public flagOfModeCellY()Ljava/lang/String;
    .registers 1

    const-string p0, "LastSimpleModeCellY"

    return-object p0
.end method

.method public getCurrentModeLayoutSetting()[I
    .registers 1

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_8

    return-object p0

    nop

    :array_8
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public getLauncherModeForString()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/mode/AbsLauncherMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1202a7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetGlobalLayoutSettings()[I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/mode/SimpleLauncherMode;->getCurrentModeLayoutSetting()[I

    move-result-object p0

    return-object p0
.end method

.method public itemTableName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "singledesktopitems_simple"

    return-object p0
.end method

.method public maxFolderPages()I
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->maxFolderPages()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public maxWorkspacePages()I
    .registers 1

    invoke-super {p0}, Lcom/android/launcher/mode/AbsLauncherMode;->maxWorkspacePages()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public mode()Lcom/android/launcher/mode/LauncherMode;
    .registers 1

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    return-object p0
.end method

.method public needSwitchDataWhenModeChanged()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public screenTableName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "singledesktopscreens_simple"

    return-object p0
.end method

.method public setCurrentModeLayoutSetting(II)V
    .registers 3

    const/4 p1, 0x3

    const/4 p2, 0x4

    invoke-super {p0, p1, p2}, Lcom/android/launcher/mode/AbsLauncherMode;->setCurrentModeLayoutSetting(II)V

    return-void
.end method
