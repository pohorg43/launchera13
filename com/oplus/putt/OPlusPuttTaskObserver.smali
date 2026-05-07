.class public Lcom/oplus/putt/OPlusPuttTaskObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;
    }
.end annotation


# static fields
.field private static final EXTRA_PUTT_SCALE:Ljava/lang/String; = "putt_scale"

.field private static final FEATURE_FOLD_REMAP_DISPLAY_DISABLED:Ljava/lang/String; = "oplus.software.fold_remap_display_disabled"

.field public static final PUTT_TASK_NORMAL_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "OPlusPuttTaskObserver"

.field private static volatile sInstance:Lcom/oplus/putt/OPlusPuttTaskObserver;

.field private static sIsFlipDevice:Ljava/lang/Boolean;


# instance fields
.field private mPuttEnterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/putt/OplusPuttEnterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPuttObserver:Lcom/oplus/putt/IPuttObserver;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;-><init>(Lcom/oplus/putt/OPlusPuttTaskObserver;Lcom/oplus/putt/OPlusPuttTaskObserver$1;)V

    iput-object v0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttObserver:Lcom/oplus/putt/IPuttObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttEnterInfos:Ljava/util/List;

    invoke-static {}, Lcom/oplus/putt/OPlusPuttTaskObserver;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->registerPuttTaskObserver()V

    :cond_1b
    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/putt/OPlusPuttTaskObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->updatePuttEnterInfos()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/putt/OPlusPuttTaskObserver;
    .registers 2

    sget-object v0, Lcom/oplus/putt/OPlusPuttTaskObserver;->sInstance:Lcom/oplus/putt/OPlusPuttTaskObserver;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/putt/OPlusPuttTaskObserver;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/putt/OPlusPuttTaskObserver;->sInstance:Lcom/oplus/putt/OPlusPuttTaskObserver;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/putt/OPlusPuttTaskObserver;

    invoke-direct {v1}, Lcom/oplus/putt/OPlusPuttTaskObserver;-><init>()V

    sput-object v1, Lcom/oplus/putt/OPlusPuttTaskObserver;->sInstance:Lcom/oplus/putt/OPlusPuttTaskObserver;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/oplus/putt/OPlusPuttTaskObserver;->sInstance:Lcom/oplus/putt/OPlusPuttTaskObserver;

    return-object v0
.end method

.method public static isFlipDevice()Z
    .registers 2

    sget-object v0, Lcom/oplus/putt/OPlusPuttTaskObserver;->sIsFlipDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/putt/OPlusPuttTaskObserver;->sIsFlipDevice:Ljava/lang/Boolean;

    :cond_14
    sget-object v0, Lcom/oplus/putt/OPlusPuttTaskObserver;->sIsFlipDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private registerPuttTaskObserver()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/oplus/putt/OplusPuttManager;->getInstance()Lcom/oplus/putt/OplusPuttManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttObserver:Lcom/oplus/putt/IPuttObserver;

    invoke-virtual {v0, v1}, Lcom/oplus/putt/OplusPuttManager;->registerPuttObserver(Lcom/oplus/putt/IPuttObserver;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "OPlusPuttTaskObserver"

    const-string v2, "failed to register putt task observer."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    invoke-direct {p0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->updatePuttEnterInfos()V

    return-void
.end method

.method private updatePuttEnterInfos()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/oplus/putt/OplusPuttManager;->getInstance()Lcom/oplus/putt/OplusPuttManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/putt/OplusPuttManager;->getEnterPuttAppInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttEnterInfos:Ljava/util/List;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_16

    :catchall_c
    move-exception v0

    goto :goto_18

    :catch_e
    move-exception v0

    :try_start_f
    const-string v1, "OPlusPuttTaskObserver"

    const-string v2, "failed to get putt app infos"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_c

    throw v0
.end method


# virtual methods
.method public getPuttEnterInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/putt/OplusPuttEnterInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/putt/OPlusPuttTaskObserver;->isFlipDevice()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttEnterInfos:Ljava/util/List;

    return-object p0

    :cond_9
    monitor-enter p0

    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttEnterInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getPuttScale(Landroid/app/TaskInfo;)F
    .registers 8

    invoke-static {}, Lcom/oplus/putt/OPlusPuttTaskObserver;->isFlipDevice()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_3d

    iget v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0, v0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->isPuttDisplay(I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3d

    :cond_11
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_13
    iget-object v2, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttEnterInfos:Ljava/util/List;

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/putt/OplusPuttEnterInfo;

    iget v4, v3, Lcom/oplus/putt/OplusPuttEnterInfo;->puttDisplayId:I

    iget v5, p1, Landroid/app/TaskInfo;->displayId:I

    if-ne v4, v5, :cond_1b

    iget-object v0, v3, Lcom/oplus/putt/OplusPuttEnterInfo;->extension:Landroid/os/Bundle;

    :cond_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_3a

    if-nez v0, :cond_33

    goto :goto_39

    :cond_33
    const-string p0, "putt_scale"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    :goto_39
    return v1

    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1

    :cond_3d
    :goto_3d
    return v1
.end method

.method public isPuttDisplay(I)Z
    .registers 5

    invoke-static {}, Lcom/oplus/putt/OPlusPuttTaskObserver;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver;->mPuttEnterInfos:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/putt/OplusPuttEnterInfo;

    iget v2, v2, Lcom/oplus/putt/OplusPuttEnterInfo;->puttDisplayId:I

    if-ne v2, p1, :cond_11

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_24
    monitor-exit p0

    return v1

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw p1
.end method
