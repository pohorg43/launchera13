.class final Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.common.util.LauncherModeUtil$switchLauncherMode$2"
    f = "LauncherModeUtil.kt"
    l = {
        0x276
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/LauncherModeUtil;->switchLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $launcherMode:Lcom/android/launcher/mode/LauncherMode;

.field public final synthetic $postExecute:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;Lb3/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;",
            "Lb3/d<",
            "-",
            "Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$launcherMode:Lcom/android/launcher/mode/LauncherMode;

    iput-object p3, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$postExecute:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;

    iget-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$launcherMode:Lcom/android/launcher/mode/LauncherMode;

    iget-object p0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$postExecute:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;-><init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    iput-object p1, v0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lc3/a;->a:Lc3/a;

    iget v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    if-ne v1, v3, :cond_23

    iget-object v0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$4:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/mode/LauncherMode;

    iget-object v4, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$2:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lx3/b;

    iget-object p0, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lq3/f0;

    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    move-object v7, p0

    goto :goto_51

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-static {p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lq3/f0;

    invoke-static {}, Lcom/android/common/util/LauncherModeUtil;->access$getMutex$p()Lx3/b;

    move-result-object v5

    iget-object v4, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$launcherMode:Lcom/android/launcher/mode/LauncherMode;

    iget-object v6, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->$postExecute:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$3:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2;->label:I

    invoke-interface {v5, v2, p0}, Lx3/b;->c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4f

    return-object v0

    :cond_4f
    move-object v7, p1

    move-object v0, v6

    :goto_51
    :try_start_51
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v4, 0x0

    if-eqz p0, :cond_dd

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/mode/LauncherModeManager;->initTargetIdpGrid()V

    invoke-static {p0, v1}, Lcom/android/common/util/LauncherModeUtil;->syncDataForLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Ljava/util/List;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/mode/LauncherModeManager;->getGlobalLayoutSettings()[I

    move-result-object v6

    aget v8, v6, v4

    aget v9, v6, v3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher/mode/LauncherModeManager;->needSwitchDataWhenModeChanged()Z

    move-result v10

    if-eqz v10, :cond_db

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v1

    const/4 v11, 0x2

    if-eqz v1, :cond_c3

    if-eq v1, v11, :cond_b0

    const/4 v12, 0x3

    if-eq v1, v12, :cond_9d

    new-array v1, v11, [I

    aput v4, v1, v4

    aput v4, v1, v3

    goto :goto_d5

    :cond_9d
    new-array v1, v11, [I

    const-string v11, "LastSimpleModeCellX"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    aput v11, v1, v4

    const-string v11, "LastSimpleModeCellY"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    goto :goto_d5

    :cond_b0
    new-array v1, v11, [I

    const-string v11, "LastDrawModeCellX"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    aput v11, v1, v4

    const-string v11, "LastDrawModeCellY"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    goto :goto_d5

    :cond_c3
    new-array v1, v11, [I

    const-string v11, "LastStandardModeCellX"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    aput v11, v1, v4

    const-string v11, "LastStandardModeCellY"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    :goto_d5
    invoke-static {p0, v6, v1}, Lcom/android/common/util/LauncherLayoutUtils;->switchCellsLayout(Landroid/content/Context;[I[I)Z

    move-result p0

    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_db
    move v4, v8

    goto :goto_de

    :cond_dd
    move v9, v4

    :goto_de
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_f5

    if-eqz v4, :cond_ed

    if-eqz v9, :cond_ed

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0, v4, v9}, Lcom/android/launcher/mode/LauncherModeManager;->saveCurrentModeLayout(II)V

    :cond_ed
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->changedMode()V

    goto :goto_fd

    :cond_f5
    const-string p0, "LauncherModeUtil"

    const-string/jumbo v1, "switch LauncherMode fail"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fd
    sget-object p0, Lq3/q0;->a:Lq3/b0;

    sget-object v8, Lv3/q;->a:Lq3/r1;

    new-instance v10, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2$1$1;

    invoke-direct {v10, v0, p1, v2}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lb3/d;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_10e
    .catchall {:try_start_51 .. :try_end_10e} :catchall_112

    invoke-interface {v5, v2}, Lx3/b;->b(Ljava/lang/Object;)V

    return-object p0

    :catchall_112
    move-exception p0

    invoke-interface {v5, v2}, Lx3/b;->b(Ljava/lang/Object;)V

    throw p0
.end method
