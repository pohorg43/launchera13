.class public Lcom/android/launcher/mode/StandardLauncherMode;
.super Lcom/android/launcher/mode/AbsLauncherMode;
.source ""


# static fields
.field public static final SCREEN_TABLE_NAME:Ljava/lang/String; = "singledesktopscreens"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/mode/AbsLauncherMode;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createLoaderResults(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/LoaderResults;
    .registers 12

    new-instance p0, Lcom/android/launcher/model/OplusStandardLoaderResults;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/model/OplusStandardLoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;I[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-object p0
.end method

.method public createLoadertask(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)Lcom/android/launcher3/model/LoaderTask;
    .registers 12

    new-instance p0, Lcom/android/launcher3/model/OplusStandardLoaderTask;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/OplusStandardLoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LoaderResults;)V

    return-object p0
.end method

.method public flagOfEmptyDatabaseCreated()Ljava/lang/String;
    .registers 1

    const-string p0, "EMPTY_DATABASE_CREATED"

    return-object p0
.end method

.method public flagOfModeCellX()Ljava/lang/String;
    .registers 1

    const-string p0, "LastStandardModeCellX"

    return-object p0
.end method

.method public flagOfModeCellY()Ljava/lang/String;
    .registers 1

    const-string p0, "LastStandardModeCellY"

    return-object p0
.end method

.method public getLauncherModeForString()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/mode/AbsLauncherMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1202a8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public itemTableName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "singledesktopitems"

    return-object p0
.end method

.method public mode()Lcom/android/launcher/mode/LauncherMode;
    .registers 1

    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    return-object p0
.end method

.method public screenTableName()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "singledesktopscreens"

    return-object p0
.end method
