.class public final Lcom/android/launcher3/appedit/AppCustomizerManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;,
        Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;,
        Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;,
        Lcom/android/launcher3/appedit/AppCustomizerManager$CustomBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppCustomizerManager"

.field private static oldTitle:Ljava/lang/String;

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher3/appedit/AppCustomizerManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

.field private mIsDestory:Z

.field private mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->oldTitle:Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion$sInstance$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/appedit/AppCustomizerManager;->updateItemTitle$lambda-2(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public static final synthetic access$getMArgs$p(Lcom/android/launcher3/appedit/AppCustomizerManager;)Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    return-object p0
.end method

.method public static final synthetic access$getOldTitle$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->oldTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final synthetic access$identifier(Lcom/android/launcher3/appedit/AppCustomizerManager;Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setOldTitle$cp(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->oldTitle:Ljava/lang/String;

    return-void
.end method

.method private final flatMapVerify(Landroid/content/Context;)Z
    .registers 4

    const-string p0, "flatMapVerify"

    invoke-static {p0}, Lcom/android/launcher3/appedit/AppEditConfig;->isNotSupportOpen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader;->flatMapVerify(Landroid/content/Context;)Z

    move-result p0

    const-string p1, "flatMapVerify "

    const-string v0, "AppEdit"

    const-string v1, "AppCustomizerManager"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private final flatMapVerifyBreak(Landroid/content/Context;I)Z
    .registers 3

    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditModelLoader;->getTableCount(Landroid/content/Context;)I

    move-result p0

    if-lt p2, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private final generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->Companion:Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic handlerLauncherDestory$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_6

    sget-object p6, Lcom/android/launcher3/appedit/AppCustomizerManager$handlerLauncherDestory$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$handlerLauncherDestory$1;

    :cond_6
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/appedit/AppCustomizerManager;->handlerLauncherDestory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final identifier(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 2

    const/4 p0, 0x0

    if-nez p1, :cond_4

    goto :goto_11

    :cond_4
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez p1, :cond_9

    goto :goto_11

    :cond_9
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_11
    if-nez p0, :cond_15

    const/4 p0, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_19
    return p0
.end method

.method private final line(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "--------------------------------"

    const-string v0, "-------------------------------"

    invoke-static {p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic registerReceiver$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    sget-object p2, Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method private final updateItemTitle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateItemTitle write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v5, "AppCustomizerManager"

    invoke-static {v1, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_57

    if-eqz v4, :cond_57

    if-eqz v6, :cond_57

    if-nez v2, :cond_3a

    goto :goto_57

    :cond_3a
    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statsClickAppEditResult()V

    sget-object v9, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v10, Lcom/android/launcher3/appedit/a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/appedit/a;-><init>(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public static synthetic updateItemTitle$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 21

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager$updateItemTitle$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$updateItemTitle$1;

    move-object v9, v0

    goto :goto_c

    :cond_a
    move-object/from16 v9, p8

    :goto_c
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/appedit/AppCustomizerManager;->updateItemTitle(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final updateItemTitle$lambda-2(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 16

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$className"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    goto :goto_26

    :cond_24
    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    :goto_26
    const-string v1, " mArgs.itemInfo?.user "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppCustomizerManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/appedit/AppEditModelLoader;->updateTitle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZ)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-nez p0, :cond_50

    goto :goto_53

    :cond_50
    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusLauncherModel;->onAppLabelRenamed(Ljava/lang/String;)V

    :goto_53
    sget-object p0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_62

    goto :goto_8d

    :cond_62
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p4

    if-nez p4, :cond_7d

    goto :goto_66

    :cond_7d
    new-instance p5, Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    const/4 p6, 0x2

    const/4 p7, 0x1

    new-array p7, p7, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p7, v0

    invoke-direct {p5, p6, p3, p7}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;-><init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    goto :goto_66

    :cond_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public final destroys(Landroid/content/Context;)V
    .registers 3

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->unRegisterReceiver(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    return-void
.end method

.method public final flatMapAllAppInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flatMap allAppInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p2, :cond_14

    move-object v3, v2

    goto :goto_1c

    :cond_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start"

    invoke-direct {p0, v4}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppEdit"

    const-string v5, "AppCustomizerManager"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_40

    return-void

    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_48

    goto :goto_4b

    :cond_48
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v7, -0x1

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    goto :goto_4f

    :cond_60
    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_67

    goto :goto_6f

    :cond_67
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "end"

    invoke-direct {p0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I
    .registers 11

    const-string v0, "cxt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_a

    goto/16 :goto_cf

    :cond_a
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    return v0

    :cond_10
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const-string v3, "AppCustomizerManager"

    const-string v4, "AppEdit"

    if-eq v1, p3, :cond_38

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1c

    goto :goto_38

    :cond_1c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_cf

    const-string p0, "flatMapInfo screenId "

    const-string p2, " != itemInfo.screenId continue; title "

    invoke-static {p0, p3, p2}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cf

    :cond_38
    :goto_38
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_40

    goto/16 :goto_cf

    :cond_40
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_48

    goto/16 :goto_cf

    :cond_48
    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v6

    invoke-direct {p0, v5, p3, v6}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    if-eqz p0, :cond_cf

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_67

    goto :goto_73

    :cond_67
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_73

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_73
    :goto_73
    instance-of p2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p2, :cond_7b

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_7c

    :cond_7b
    const/4 p2, 0x0

    :goto_7c
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_86

    goto :goto_8e

    :cond_86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_8e

    move v1, v2

    goto :goto_8f

    :cond_8e
    :goto_8e
    move v1, v0

    :goto_8f
    iput-boolean v1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsLabelEdited:Z

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getIconStatus()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_98

    goto :goto_9f

    :cond_98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_9f

    move v0, v2

    :cond_9f
    :goto_9f
    iput-boolean v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsIconEdited:Z

    const-string v0, "flatMapInfo className "

    const-string v1, " title "

    invoke-static {v0, p3, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " map title 2 "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " IsLabelEdited: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsLabelEdited:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "mIsIconEdited: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsIconEdited:Z

    invoke-static {p3, p0, v4, v3}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_cf
    :goto_cf
    return v0
.end method

.method public final flatMapWorkItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;I)V
    .registers 13

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string v0, "flatMapWorkItemInfo workspaceItems "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_16

    goto :goto_1a

    :cond_16
    iget-object v2, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1c

    :goto_1a
    move-object v2, v1

    goto :goto_24

    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start"

    invoke-direct {p0, v3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppEdit"

    const-string v5, "AppCustomizerManager"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flatMapWorkItemInfo folders "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4e

    goto :goto_52

    :cond_4e
    iget-object v7, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-nez v7, :cond_54

    :goto_52
    move-object v7, v1

    goto :goto_5c

    :cond_54
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_5c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_73

    goto :goto_91

    :cond_73
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    if-nez v0, :cond_78

    goto :goto_91

    :cond_78
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_91

    :goto_7f
    add-int/lit8 v7, v3, 0x1

    iget-object v8, p2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v3, p1, p3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    if-lt v7, v0, :cond_8f

    goto :goto_91

    :cond_8f
    move v3, v7

    goto :goto_7f

    :cond_91
    :goto_91
    if-nez p2, :cond_94

    goto :goto_c2

    :cond_94
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-nez v0, :cond_99

    goto :goto_c2

    :cond_99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9d
    :goto_9d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    if-nez v3, :cond_ae

    goto :goto_9d

    :cond_ae
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v7, p1, p3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    goto :goto_b2

    :cond_c2
    :goto_c2
    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_c9

    goto :goto_d6

    :cond_c9
    iget-object p2, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-nez p2, :cond_ce

    goto :goto_d6

    :cond_ce
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_d6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "end"

    invoke-direct {p0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final flatMapWorkItemInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 6

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flatMapWorkItemInfo workspaceItems "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppCustomizerManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    return-void
.end method

.method public final getCustomizeAppTitle(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "cxt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    goto :goto_5d

    :cond_8
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_5d

    :cond_f
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_5d

    :cond_16
    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    if-eqz p0, :cond_5d

    const-string p2, "flatMapInfo className "

    const-string v1, " title "

    invoke-static {p2, v0, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " map title 2 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppEdit"

    const-string v1, "AppCustomizerManager"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5d
    :goto_5d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPendingArgs()Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    return-object p0
.end method

.method public final handlerLauncherDestory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "cxt"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    move-object v3, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    move-object v5, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callBack"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    const-string v4, "mIsDestory "

    const-string v6, "AppEdit"

    const-string v7, "AppCustomizerManager"

    invoke-static {v1, v4, v6, v7}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    if-eqz v1, :cond_62

    iget-object v1, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_62

    :cond_34
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3b

    goto :goto_62

    :cond_3b
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_42

    goto :goto_62

    :cond_42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cxt.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v2

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/appedit/AppCustomizerManager;->updateItemTitle$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public final onCreate(Landroid/content/Context;)V
    .registers 3

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager$onCreate$1;-><init>(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mIsDestory:Z

    return-void
.end method

.method public final pendingReqArgs(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    instance-of v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_f

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mArgs:Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_1e

    goto :goto_26

    :cond_1e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    move-object v0, p1

    :goto_26
    invoke-virtual {p0, v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$PendingReqArgs;->setComponent(Ljava/lang/String;)V

    return-void
.end method

.method public final registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->registerReceiver(Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public final removePackage(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    return-void

    :cond_17
    const-string/jumbo v0, "removePackage "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppCustomizerManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_48

    :cond_2c
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_48

    :cond_33
    sget-object v1, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->identifier(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p2

    invoke-direct {p0, v2, v0, p2}, Lcom/android/launcher3/appedit/AppCustomizerManager;->generateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/android/launcher3/appedit/AppEditModelLoader;->deleteTitle(Landroid/content/Context;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public final reqUpdateWorkspaceItemInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapVerify(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string/jumbo v0, "reqUpdateWorkspaceItemInfo "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_17

    const/4 v1, 0x0

    goto :goto_1f

    :cond_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "st_end"

    invoke-direct {p0, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEdit"

    const-string v2, "AppCustomizerManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3f

    goto :goto_54

    :cond_3f
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/appedit/AppCustomizerManager;->flatMapInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;I)I

    goto :goto_43

    :cond_54
    :goto_54
    return-void
.end method

.method public final unRegisterReceiver(Landroid/content/Context;)V
    .registers 3

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager;->mReceiver:Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppCustomizerManager$AppEditBroadcastReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method
