.class public Lcom/android/launcher3/AppWidgetsRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AWRestoredReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static restoreAppWidgetIds(Landroid/content/Context;[I[I)V
    .registers 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v3, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "AWRestoredReceiver"

    const/4 v6, 0x0

    if-nez v4, :cond_39

    const-string v0, "Skipping widget ID remap as DB already in use"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v2

    :goto_1a
    if-ge v6, v0, :cond_38

    aget v1, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting widgetId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_38
    return-void

    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    move v7, v6

    :goto_42
    array-length v8, v1

    if-ge v6, v8, :cond_11d

    const-string v8, "Widget state restore id "

    invoke-static {v8}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v1, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v8, v2, v6

    invoke-virtual {v13, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_71

    const/4 v8, 0x4

    move v14, v8

    goto :goto_72

    :cond_71
    move v14, v9

    :goto_72
    sget-object v8, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    aget v8, v1, v6

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-array v15, v9, [Ljava/lang/String;

    aput-object v8, v15, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v15, v10

    new-instance v9, Lcom/android/launcher3/util/ContentWriter;

    new-instance v11, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    const-string v12, "appWidgetId=? and (restored & 1) = 1 and profileId=?"

    invoke-direct {v11, v12, v15}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v9, v0, v11}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    aget v11, v2, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "appWidgetId"

    invoke-virtual {v9, v12, v11}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v10, "restored"

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    move-result v9

    if-nez v9, :cond_f0

    sget-object v9, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v8, v1, v7

    const/16 v16, 0x0

    const-string v17, "appWidgetId=?"

    move-object v7, v4

    move-object v8, v9

    move-object v9, v11

    move-object v11, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v4

    move-object v4, v11

    move-object v11, v1

    move-object v1, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_dc
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_e7

    aget v8, v2, v6

    invoke-virtual {v3, v8}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_e7
    .catchall {:try_start_dc .. :try_end_e7} :catchall_eb

    :cond_e7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_f4

    :catchall_eb
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_f0
    move-object/from16 v17, v4

    move-object v4, v10

    move-object v1, v12

    :goto_f4
    new-instance v7, Lcom/android/launcher3/util/ContentWriter;

    const-string v8, "appWidgetId=? and profileId=?"

    invoke-static {v8, v15}, Lcom/android/launcher3/util/ContentWriter$CommitParams;->backupCommitParams(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter$CommitParams;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ContentWriter$CommitParams;)V

    aget v8, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, v17

    goto/16 :goto_42

    :cond_11d
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_12a
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/4 p0, 0x0

    const-string v0, "hostId"

    invoke-static {p2, v0, p0}, Lcom/android/common/util/IntentUtils;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "Widget ID map received for host:"

    const-string v1, "AWRestoredReceiver"

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x400

    if-eq p0, v0, :cond_1f

    return-void

    :cond_1f
    const-string p0, "appWidgetOldIds"

    invoke-static {p2, p0}, Lcom/android/common/util/IntentUtils;->getIntArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[I

    move-result-object p0

    const-string v0, "appWidgetIds"

    invoke-static {p2, v0}, Lcom/android/common/util/IntentUtils;->getIntArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p0, :cond_37

    if-eqz p2, :cond_37

    array-length v0, p0

    array-length v2, p2

    if-ne v0, v2, :cond_37

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/provider/RestoreDbTask;->setRestoredAppWidgetIds(Landroid/content/Context;[I[I)V

    goto :goto_3c

    :cond_37
    const-string p0, "Invalid host restored received"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-void
.end method
