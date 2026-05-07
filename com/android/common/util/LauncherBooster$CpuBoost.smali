.class public final Lcom/android/common/util/LauncherBooster$CpuBoost;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CpuBoost"
.end annotation


# instance fields
.field private boostMethod:Ljava/lang/reflect/Method;

.field private jankManager:Lcom/oplus/view/IJankManager;

.field private needNotifyFirst:Z

.field private final uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

.field private updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

.field private uxImMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    :try_start_c
    invoke-static {}, Lcom/oplus/view/JankManager;->getInstance()Lcom/oplus/view/JankManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_2c

    :cond_21
    const-string v0, "get jankmanager failure, e="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherBooster"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private final getBoostMethod()Ljava/lang/reflect/Method;
    .registers 9

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->boostMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_50

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-nez v3, :cond_e

    const/4 v0, 0x0

    goto :goto_2e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setTaskAnimation"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v0, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v6, 0x4

    aput-object v0, v5, v6

    const/4 v6, 0x5

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_2e
    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->boostMethod:Ljava/lang/reflect/Method;

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    goto :goto_38

    :catchall_33
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_38
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_43

    check-cast v0, Ly2/p;

    iput-boolean v1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    goto :goto_50

    :cond_43
    const-string v0, "get method setTaskAnimation failure, e="

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    :cond_50
    :goto_50
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->boostMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final getUpdateAppSceneAndActionMethod()Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_41

    :try_start_4
    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_25

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "updateAppSceneAndAction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_25
    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2a

    goto :goto_2f

    :catchall_2a
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_41

    :cond_36
    const-string v1, "get method updateAppSceneAndAction failure, e="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final getUxImMethod()Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxImMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3c

    :try_start_4
    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_20

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setUxImFlag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_20
    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxImMethod:Ljava/lang/reflect/Method;

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_25

    goto :goto_2a

    :catchall_25
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2a
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_3c

    :cond_31
    const-string v1, "getMethod exception: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxImMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify uifirst, scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pkg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pid="

    const-string v1, ", renderTid="

    invoke-static {v0, p3, p1, p4, v1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string p1, ", uxValue="

    const-string v1, ", flag="

    invoke-static {v0, p5, p1, p6, v1}, Landroidx/room/q;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", needNotify="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uiFirstmanager null ? "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_43

    move p1, v1

    goto :goto_44

    :cond_43
    move p1, v2

    :goto_44
    const-string v3, "LauncherBooster"

    invoke-static {v0, p1, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-nez p1, :cond_52

    goto :goto_95

    :cond_52
    :try_start_52
    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->getBoostMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_5a

    const/4 p0, 0x0

    goto :goto_85

    :cond_5a
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x4

    aput-object p6, v0, p2

    const/4 p2, 0x5

    aput-object p7, v0, p2

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7f
    .catchall {:try_start_52 .. :try_end_7f} :catchall_80

    goto :goto_85

    :catchall_80
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_85
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8c

    goto :goto_95

    :cond_8c
    const-string p1, "invoke setTaskAnimation failure, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public static synthetic setUx$default(Lcom/android/common/util/LauncherBooster$CpuBoost;ZIILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method


# virtual methods
.method public final enterSchedAssistScene()V
    .registers 3

    const-string v0, "LauncherBooster"

    const-string v1, "enterSchedAssistScene"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    goto :goto_1a

    :cond_d
    const-string v1, "129"

    invoke-interface {p0, v1}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setSchedAssistScene(Ljava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_26

    :cond_21
    const-string p0, "invoke enterSchedAssistScene failure"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final exitSetSchedAssistScene()V
    .registers 3

    const-string v0, "LauncherBooster"

    const-string v1, "exitSetSchedAssistScene"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    goto :goto_1a

    :cond_d
    const-string v1, "1"

    invoke-interface {p0, v1}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setSchedAssistScene(Ljava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_26

    :cond_21
    const-string p0, "invoke exitSetSchedAssistScene failure"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final notifyWhenAnimate(ZLjava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "sceneName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eqz p1, :cond_f

    const-string v0, "2"

    goto :goto_11

    :cond_f
    const-string v0, "1"

    :goto_11
    move-object v7, v0

    if-eqz p1, :cond_17

    const-string p1, "4"

    goto :goto_19

    :cond_17
    const-string p1, "0"

    :goto_19
    move-object v8, p1

    const-string v3, "com.android.launcher"

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyWhenWindowAnimate(ZLjava/lang/String;Z)V
    .registers 12

    if-eqz p3, :cond_a

    if-eqz p1, :cond_7

    const-string p1, "1"

    goto :goto_c

    :cond_7
    const-string p1, "2"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    move-object v7, p1

    const/4 v3, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, -0x1

    const-string v2, "com.android.launcher"

    const-string v6, "-1"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUx(ZI)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherBooster#setUx("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUx: pid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", open = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LauncherBooster"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_47

    const-string p1, "132"

    goto :goto_49

    :cond_47
    const-string p1, "4"

    :goto_49
    move-object v9, p1

    const/4 v6, 0x6

    const/4 v8, 0x0

    const-string/jumbo v4, "setUx"

    const-string v5, "com.android.launcher"

    const-string v10, "4"

    move-object v3, p0

    move v7, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final setUxImFlag()V
    .registers 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUxImFlag: pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flag = 8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherBooster"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_20
    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->getUxImMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_28

    const/4 p0, 0x0

    goto :goto_47

    :cond_28
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_42

    goto :goto_47

    :catchall_42
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_47
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4e

    goto :goto_57

    :cond_4e
    const-string v0, "invoke setUxImFlag failure, e="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_57
    return-void
.end method

.method public final updateAppSceneAndAction(IZ)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppSceneAndAction: scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    if-nez v0, :cond_24

    return-void

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherBooster#updateAppSceneAndAction("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_47
    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->getUpdateAppSceneAndActionMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_4f

    const/4 p0, 0x0

    goto :goto_71

    :cond_4f
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.launcher"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_6c

    goto :goto_71

    :catchall_6c
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_71
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_78

    goto :goto_81

    :cond_78
    const-string p1, "invoke updateAppSceneAndAction failure, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_81
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
