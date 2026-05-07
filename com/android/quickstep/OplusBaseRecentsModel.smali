.class public abstract Lcom/android/quickstep/OplusBaseRecentsModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseRecentsModel$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusBaseRecentsModel$Companion;

.field private static final RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public final mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseRecentsModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsModel;->Companion:Lcom/android/quickstep/OplusBaseRecentsModel$Companion;

    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "TaskThumbnailIconCache-"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsModel;->RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/OplusRecentTasksListImpl;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v2, "MAIN_EXECUTOR"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    invoke-direct {v2, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "INSTANCE.get(context)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/quickstep/OplusRecentTasksListImpl;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    new-instance v0, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    sget-object v1, Lcom/android/quickstep/OplusBaseRecentsModel;->RECENTS_MODEL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const-string v2, "RECENTS_MODEL_EXECUTOR"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v3, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/android/quickstep/OplusTaskIconCacheImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    new-instance v0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oplus.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/quickstep/OplusBaseRecentsModel$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/OplusBaseRecentsModel$1;-><init>(Lcom/android/quickstep/OplusBaseRecentsModel;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic a(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->updateTasksInTaskRemoved$lambda-4(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseRecentsModel;->preLoadTaskThumbnail$lambda-2(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->updateTasksInTaskStackChanged$lambda-7(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private static final preLoadTaskThumbnail$lambda-2(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupTasks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_f
    :goto_f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p0, :cond_2c

    const-string v0, "groupTask.task1.key"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_f

    :cond_2c
    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_32

    goto :goto_3c

    :cond_32
    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v2, :cond_37

    goto :goto_3c

    :cond_37
    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, p0, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    :goto_3c
    if-eqz v1, :cond_f

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v1, "groupTask.task2!!.key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p2}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_f

    :cond_4c
    return-void
.end method

.method private static final updateTasksInTaskRemoved$lambda-4(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 15

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :cond_13
    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/GroupTask;

    iget-object v4, v3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v4, p0, :cond_29

    :goto_27
    move v2, v1

    goto :goto_13

    :cond_29
    iget-object v3, v3, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v3, :cond_2f

    :cond_2d
    :goto_2d
    move v3, v1

    goto :goto_39

    :cond_2f
    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v3, :cond_34

    goto :goto_2d

    :cond_34
    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, p0, :cond_2d

    move v3, v0

    :goto_39
    if-eqz v3, :cond_13

    goto :goto_27

    :cond_3c
    if-eqz v2, :cond_59

    new-instance p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v4, p2

    move v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V

    iget-object p0, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/TaskThumbnailCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    iget-object p0, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mIconCache:Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-virtual {p0, p2}, Lcom/android/quickstep/TaskIconCache;->onTaskRemoved(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    :cond_59
    return-void
.end method

.method private static final updateTasksInTaskStackChanged$lambda-7(ILcom/android/quickstep/OplusBaseRecentsModel;Ljava/util/ArrayList;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tasks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v3, p0, :cond_27

    iput-object v2, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_10

    :cond_27
    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    goto :goto_37

    :cond_2d
    iget-object v4, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v4, :cond_32

    goto :goto_37

    :cond_32
    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v4, p0, :cond_37

    const/4 v3, 0x1

    :cond_37
    :goto_37
    if-eqz v3, :cond_42

    if-nez v2, :cond_3d

    const/4 v0, 0x0

    goto :goto_3f

    :cond_3d
    iget-object v0, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    :goto_3f
    iput-object v0, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_10

    :cond_42
    iget-object v2, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    const-string/jumbo v3, "task.task1"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_52

    goto :goto_10

    :cond_52
    iget-object v1, p1, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_10

    :cond_58
    return-void
.end method


# virtual methods
.method public final forceReloadedTasks()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentTasksList;->invalidateLoadedTasks()V

    return-void
.end method

.method public final getCurrentTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->currentTaskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0
.end method

.method public final getLastLoadedTask()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getLastLoadedTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final preLoadTaskThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v1

    new-instance v2, Lcom/android/quickstep/a0;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/quickstep/a0;-><init>(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final updateTasksInTaskRemoved(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v1

    new-instance v2, Lcom/android/quickstep/z;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p0, v3}, Lcom/android/quickstep/z;-><init>(ILcom/android/quickstep/OplusBaseRecentsModel;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    return v3
.end method

.method public final updateTasksInTaskStackChanged(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mThumbnailCache:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;

    invoke-virtual {v1}, Lcom/android/quickstep/TaskThumbnailCache;->getCacheSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    new-instance v2, Lcom/android/quickstep/z;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/android/quickstep/z;-><init>(ILcom/android/quickstep/OplusBaseRecentsModel;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentTasksList;->getTaskKeys(ILjava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method
