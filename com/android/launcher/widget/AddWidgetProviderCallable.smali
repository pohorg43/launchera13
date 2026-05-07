.class public Lcom/android/launcher/widget/AddWidgetProviderCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/launcher/widget/AddWidgetProviderCallableResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddWidgetProviderCallable"


# instance fields
.field private mAppState:Lcom/android/launcher3/LauncherAppState;

.field private mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mContext:Landroid/content/Context;

.field private mIsPreferScreenId:Z

.field private mProvider:Landroid/content/ComponentName;

.field private mUser:Landroid/os/UserHandle;

.field private mWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/widget/LauncherAppWidgetHost;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mAppState:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-object p3, p0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mProvider:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mUser:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mContext:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mIsPreferScreenId:Z

    return-void
.end method


# virtual methods
.method public call()Lcom/android/launcher/widget/AddWidgetProviderCallableResult;
    .registers 22

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    new-instance v9, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v1, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mContext:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mProvider:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v2}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_2c

    const-string v1, "AddWidgetProviderCallable"

    const-string v2, "call, widget provider do not exist! provider = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_2c
    invoke-static {}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->getInstance()Lcom/android/launcher/operators/AppWidgetReloadHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->getPackageCount()I

    move-result v12

    iget-object v1, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_37
    iget-object v2, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    invoke-virtual {v10}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/OplusLauncherModel;->findWidgetInfoInWorkHandler(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_61

    if-eqz v12, :cond_61

    const-string v0, "AddWidgetProviderCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call, widget is exist! appWidgetProviderInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-object v11

    :cond_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_18d

    new-instance v13, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v13}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget-object v1, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Lcom/android/launcher3/util/IntArray;

    move-result-object v14

    new-instance v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/16 v1, -0x69

    invoke-direct {v15, v10, v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iget-object v8, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v8

    :try_start_77
    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    const/16 v16, 0x0

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-boolean v1, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mIsPreferScreenId:Z

    if-eqz v1, :cond_8f

    :cond_8b
    const/4 v1, -0x2

    move/from16 v17, v1

    goto :goto_91

    :cond_8f
    move/from16 v17, v16

    :goto_91
    iget-object v2, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mAppState:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v6, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I
    :try_end_99
    .catchall {:try_start_77 .. :try_end_99} :catchall_184

    move-object/from16 v1, p0

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v18, v8

    move/from16 v8, v17

    :try_start_a1
    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher/widget/AddWidgetProviderCallable;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;III)[I

    move-result-object v1

    aget v2, v1, v16

    const/16 v19, 0x2

    const/16 v20, 0x1

    if-ltz v2, :cond_b5

    aget v3, v1, v20

    if-ltz v3, :cond_b5

    aget v3, v1, v19

    if-gez v3, :cond_ec

    :cond_b5
    const-string v1, "AddWidgetProviderCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no space for add item, item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mAppState:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v6, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v7, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move-object/from16 v1, p0

    move-object v4, v14

    move-object v5, v13

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher/widget/AddWidgetProviderCallable;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;III)[I

    move-result-object v1

    aget v2, v1, v16

    if-ltz v2, :cond_168

    aget v3, v1, v20

    if-ltz v3, :cond_168

    aget v3, v1, v19

    if-gez v3, :cond_ec

    goto/16 :goto_168

    :cond_ec
    monitor-exit v18
    :try_end_ed
    .catchall {:try_start_a1 .. :try_end_ed} :catchall_182

    iget-object v3, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    invoke-virtual {v9, v3, v10, v11}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_113

    const-string v1, "AddWidgetProviderCallable"

    const-string v2, "call, bind widget fail! "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    return-object v11

    :cond_113
    new-instance v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v4, v15, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v0, v3, v4}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    if-eqz v12, :cond_124

    invoke-static {}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->getInstance()Lcom/android/launcher/operators/AppWidgetReloadHelper;

    move-result-object v1

    invoke-virtual {v1, v12, v0, v15}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->addOperatorWidget(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    goto :goto_146

    :cond_124
    iget v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget-object v3, v15, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/16 v3, -0x64

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    aget v3, v1, v20

    iput v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aget v1, v1, v19

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :goto_146
    const-string v1, "AddWidgetProviderCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add widget info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;

    invoke-direct {v1}, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;-><init>()V

    iput-object v0, v1, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWidgetInfo:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iput-object v13, v1, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->addedWorkspaceScreensFinal:Lcom/android/launcher3/util/IntArray;

    iput-object v14, v1, Lcom/android/launcher/widget/AddWidgetProviderCallableResult;->allWorkspaceScreens:Lcom/android/launcher3/util/IntArray;

    return-object v1

    :cond_168
    :goto_168
    :try_start_168
    const-string v1, "AddWidgetProviderCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call, no space for add item, item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/launcher/widget/AddWidgetProviderCallable;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v18
    :try_end_181
    .catchall {:try_start_168 .. :try_end_181} :catchall_182

    return-object v11

    :catchall_182
    move-exception v0

    goto :goto_187

    :catchall_184
    move-exception v0

    move-object/from16 v18, v8

    :goto_187
    move-object/from16 v8, v18

    :goto_189
    :try_start_189
    monitor-exit v8
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_18b

    throw v0

    :catchall_18b
    move-exception v0

    goto :goto_189

    :catchall_18d
    move-exception v0

    :try_start_18e
    monitor-exit v1
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18d

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/widget/AddWidgetProviderCallable;->call()Lcom/android/launcher/widget/AddWidgetProviderCallableResult;

    move-result-object p0

    return-object p0
.end method

.method public findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;III)[I
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    monitor-enter p2

    :try_start_10
    iget-object v6, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_16

    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_3e

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v9, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3e
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_42
    monitor-exit p2
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_167

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    const/4 v7, -0x2

    const/4 v8, 0x0

    move/from16 v9, p7

    if-ne v9, v7, :cond_95

    invoke-static {v0, v5, v1, v3, v4}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableSpaceByScreenOrder(Lcom/android/launcher3/LauncherAppState;Landroid/util/LongSparseArray;[III)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v10, "AddWidgetProviderCallable"

    const-string v11, "findSpaceForItem,found:"

    const-string v12, ",res.second:"

    invoke-static {v11, v9, v12}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",workspaceScreens:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_95

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_97

    :cond_95
    move v7, v8

    move v9, v7

    :goto_97
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9f

    move v10, v8

    goto :goto_a1

    :cond_9f
    add-int/lit8 v10, v6, -0x1

    :goto_a1
    const-string v11, "AddWidgetProviderCallable"

    const-string/jumbo v12, "preferredIndex = "

    const-string v13, ", count = "

    const-string v14, ", spanX = "

    invoke-static {v12, v10, v13, v6, v14}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", spanY = "

    invoke-static {v12, v3, v13, v4, v11}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    if-nez v9, :cond_c6

    if-ge v10, v6, :cond_c6

    invoke-virtual {v2, v10}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    int-to-long v11, v7

    invoke-virtual {v5, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {v0, v9, v1, v3, v4}, Lcom/android/launcher/model/FindSpaceHelper;->findLastAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v9

    :cond_c6
    const/4 v11, -0x1

    const/4 v12, 0x1

    if-nez v9, :cond_158

    const-string v13, "AddWidgetProviderCallable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "found false, count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v13

    if-ne v6, v13, :cond_128

    :goto_f2
    if-ltz v10, :cond_151

    invoke-virtual {v2, v10}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    int-to-long v13, v7

    invoke-virtual {v5, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v0, v6, v1, v3, v4}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v9

    if-eqz v9, :cond_10f

    const-string v0, "AddWidgetProviderCallable"

    const-string v2, "found, id = "

    const-string v3, ", index = "

    invoke-static {v2, v7, v3, v10, v0}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_151

    :cond_10f
    const-string v6, "AddWidgetProviderCallable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "findSpaceForItem, found fail, screenId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_f2

    :cond_128
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "generate_new_screen_id"

    invoke-static {v6, v7}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    move-object/from16 v2, p4

    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    int-to-long v9, v6

    invoke-virtual {v5, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/launcher/model/FindSpaceHelper;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v9

    move v7, v6

    :cond_151
    :goto_151
    if-nez v9, :cond_158

    aput v11, v1, v8

    aput v11, v1, v12

    move v7, v11

    :cond_158
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v7, v0, v8

    aget v2, v1, v8

    aput v2, v0, v12

    aget v1, v1, v12

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0

    :catchall_167
    move-exception v0

    :try_start_168
    monitor-exit p2
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    throw v0
.end method
