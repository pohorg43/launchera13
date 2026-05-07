.class public Lcom/android/wm/shell/apppairs/AppPairsController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPairsController"


# instance fields
.field private final mActiveAppPairs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/apppairs/AppPair;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mImpl:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;-><init>(Lcom/android/wm/shell/apppairs/AppPairsController;Lcom/android/wm/shell/apppairs/AppPairsController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mImpl:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iput-object p6, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p4, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/apppairs/AppPairsController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/apppairs/AppPairsController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public asAppPairs()Lcom/android/wm/shell/apppairs/AppPairs;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mImpl:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_22
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_32

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/apppairs/AppPair;

    invoke-virtual {v2, p1, v0}, Lcom/android/wm/shell/apppairs/AppPair;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_22

    :cond_32
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    if-eqz p0, :cond_39

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/apppairs/AppPairsPool;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public getDisplayController()Lcom/android/wm/shell/common/DisplayController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method public getDisplayImeController()Lcom/android/wm/shell/common/DisplayImeController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    return-object p0
.end method

.method public getDisplayInsetsController()Lcom/android/wm/shell/common/DisplayInsetsController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    return-object p0
.end method

.method public getSyncTransactionQueue()Lcom/android/wm/shell/common/SyncTransactionQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-object p0
.end method

.method public getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public onOrganizerRegistered()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/wm/shell/apppairs/AppPairsPool;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/apppairs/AppPairsPool;-><init>(Lcom/android/wm/shell/apppairs/AppPairsController;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/apppairs/AppPairsController;->setPairsPool(Lcom/android/wm/shell/apppairs/AppPairsPool;)V

    :cond_c
    return-void
.end method

.method public pair(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p1, :cond_16

    if-nez p2, :cond_11

    goto :goto_16

    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/apppairs/AppPairsController;->pair(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public pair(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/apppairs/AppPairsController;->pairInner(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/apppairs/AppPair;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public pairInner(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/apppairs/AppPair;
    .registers 4
    .param p1  # Landroid/app/ActivityManager$RunningTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/app/ActivityManager$RunningTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/apppairs/AppPairsPool;->acquire()Lcom/android/wm/shell/apppairs/AppPair;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/apppairs/AppPair;->pair(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/apppairs/AppPairsPool;->release(Lcom/android/wm/shell/apppairs/AppPair;)V

    const/4 p0, 0x0

    return-object p0

    :cond_13
    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public setPairsPool(Lcom/android/wm/shell/apppairs/AppPairsPool;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/wm/shell/apppairs/AppPairsController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unpair(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/apppairs/AppPairsController;->unpair(IZ)V

    return-void
.end method

.method public unpair(IZ)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/apppairs/AppPair;

    const/4 v1, 0x1

    if-nez v0, :cond_27

    iget-object v2, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_12
    if-ltz v2, :cond_27

    iget-object v3, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/apppairs/AppPair;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/apppairs/AppPair;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v0, v3

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_27
    :goto_27
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_41

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz p0, :cond_40

    int-to-long p0, p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x38a46b82

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p2, v0, v1, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_40
    return-void

    :cond_41
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v4, :cond_5d

    int-to-long v4, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0xdf6e771

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v2

    aput-object p1, v8, v1

    invoke-static {v6, v7, v1, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5d
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Lcom/android/wm/shell/apppairs/AppPair;->unpair()V

    if-eqz p2, :cond_70

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/apppairs/AppPairsPool;->release(Lcom/android/wm/shell/apppairs/AppPair;)V

    :cond_70
    return-void
.end method
