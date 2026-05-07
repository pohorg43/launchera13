.class public Lcom/android/quickstep/RecentsModel;
.super Lcom/android/quickstep/OplusBaseRecentsModel;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/IconProvider$IconChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/RecentsModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mThumbnailChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Landroidx/room/c;->i:Landroidx/room/c;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "TaskThumbnailIconCache-"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/RecentsModel;->RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;
    .registers 2

    new-instance v0, Lcom/android/quickstep/RecentsModel;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic e(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/RecentsModel;->lambda$isTaskRemoved$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentsModel;ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsModel;->lambda$onTaskStackChangedBackground$1(ILjava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$isTaskRemoved$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .registers 4

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1c
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onTaskStackChangedBackground$1(ILjava/util/ArrayList;)V
    .registers 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/GroupTask;->containsTask(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4

    :cond_17
    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_4

    :cond_26
    return-void
.end method


# virtual methods
.method public addThumbnailChangeListener(Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "RecentsModel:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    const-string p1, "  "

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getIconCache()Lcom/android/quickstep/TaskIconCache;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    return-object p0
.end method

.method public getTasks(Ljava/util/function/Consumer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    return-object p0
.end method

.method public isLoadingTasksInBackground()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentTasksList;->isLoadingTasksInBackground()Z

    move-result p0

    return p0
.end method

.method public isTaskListValid(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->isTaskListValid(I)Z

    move-result p0

    return p0
.end method

.method public isTaskRemoved(ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    new-instance v0, Lcom/android/quickstep/z0;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/z0;-><init>(ILjava/util/function/Consumer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    return-void
.end method

.method public onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/TaskIconCache;->invalidateCacheEntries(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;->onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onSystemIconStateChanged(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 11

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel;->updateTasksInTaskRemoved(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TaskThumbnailCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TaskIconCache;->onTaskRemoved(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/TaskThumbnailCache;->updateTaskSnapShot(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_22

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;->onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_1f

    iput-object p2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_22
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .registers 5

    const-string v0, "Hotseat_expand"

    const-string v1, "onTaskStackChangedBackground to updateDockerRecentTaskData"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->onTaskStackChangedBackground()V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->isPreloadingEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/quickstep/TaskUtils;->checkCurrentOrManagedUserId(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_31

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_32

    :cond_31
    const/4 v0, -0x1

    :goto_32
    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusBaseRecentsModel;->updateTasksInTaskStackChanged(I)Z

    move-result v1

    if-eqz v1, :cond_39

    return-void

    :cond_39
    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v2, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v2

    new-instance v3, Lcom/android/quickstep/z0;

    invoke-direct {v3, p0, v0}, Lcom/android/quickstep/z0;-><init>(Lcom/android/quickstep/RecentsModel;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 4

    const/16 v0, 0x14

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setVisible(Z)V

    :cond_e
    const/16 v0, 0xf

    if-ne p1, v0, :cond_1c

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/TaskThumbnailCache;->clear()V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    :cond_1c
    return-void
.end method

.method public removeThumbnailChangeListener(Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/RecentsModel;->mThumbnailChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
