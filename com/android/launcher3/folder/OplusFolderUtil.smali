.class public final Lcom/android/launcher3/folder/OplusFolderUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BIGFOLDER_TABLET_LADD_ROW:I = 0x3

.field public static final INSTANCE:Lcom/android/launcher3/folder/OplusFolderUtil;

.field private static bigFolderMaxCol:I

.field private static bigFolderMaxRow:I

.field private static folderMaxColOrRow:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderUtil;

    invoke-direct {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/OplusFolderUtil;->INSTANCE:Lcom/android/launcher3/folder/OplusFolderUtil;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->bigFolderMaxCol:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x3

    goto :goto_1f

    :cond_1d
    sget v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    :goto_1f
    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->bigFolderMaxRow:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFolderMaxCol(Z)I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->refresh()V

    if-eqz p0, :cond_8

    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->bigFolderMaxCol:I

    goto :goto_a

    :cond_8
    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    :goto_a
    return p0
.end method

.method public static final getFolderMaxRow(Z)I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->refresh()V

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x3

    goto :goto_12

    :cond_d
    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    goto :goto_12

    :cond_10
    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    :goto_12
    return p0
.end method

.method public static final getMaxNumItemsInFolderPreview(Z)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->refresh()V

    if-eqz p0, :cond_e

    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->bigFolderMaxCol:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderUtil;->getFolderMaxRow(Z)I

    move-result v0

    mul-int/2addr v0, p0

    goto :goto_12

    :cond_e
    sget p0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    mul-int v0, p0, p0

    :goto_12
    return v0
.end method

.method public static final getScreenInfoOfFolder(Lcom/android/launcher/Launcher;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_46

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-nez p0, :cond_16

    goto :goto_46

    :cond_16
    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-nez p0, :cond_1b

    goto :goto_46

    :cond_1b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1f

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v2, v3, :cond_1f

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_46
    :goto_46
    return-object v0
.end method

.method public static final isExistInFolderContents(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "addItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderContents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_2a

    :cond_22
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_2a
    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addItem = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " --- alreadyItem = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "checkFolderAlreadyHasSameApplication"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_55
    return v1
.end method

.method private static final needRefresh()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static final refresh()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/folder/OplusFolderUtil;->needRefresh()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->numFolderPreview:I

    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->bigFolderMaxCol:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    goto :goto_1e

    :cond_1c
    sget v0, Lcom/android/launcher3/folder/OplusFolderUtil;->folderMaxColOrRow:I

    :goto_1e
    sput v0, Lcom/android/launcher3/folder/OplusFolderUtil;->bigFolderMaxRow:I

    :cond_20
    return-void
.end method
