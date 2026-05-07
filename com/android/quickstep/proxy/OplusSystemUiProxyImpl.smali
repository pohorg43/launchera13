.class public abstract Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;

.field public static final STATE_BINDER_DIED:I = 0x4

.field public static final STATE_DESTROY:I = 0x3

.field public static final STATE_INITIALIZE_FAIL:I = 0x2

.field public static final STATE_INITIALIZE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusSystemUiProxyImpl"


# instance fields
.field public mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private pendingGestureRegionChanged:Ljava/lang/Runnable;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->Companion:Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->changeBottomGestureAreaRatio$lambda-19$lambda-18(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V

    return-void
.end method

.method private static final changeBottomGestureAreaRatio$lambda-19$lambda-18(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V
    .registers 3

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->changeBottomGestureAreaRatio(F)V

    return-void
.end method


# virtual methods
.method public final addTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)Z
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTaskListener: mShellTransitions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUiProxyImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    const/4 v0, 0x0

    if-nez p0, :cond_2b

    goto :goto_47

    :cond_2b
    :try_start_2b
    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    const/4 v0, 0x1

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_32

    goto :goto_37

    :catchall_32
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_37
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3e

    goto :goto_47

    :cond_3e
    const-string p1, "addTaskListener: add task listener failed, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return v0
.end method

.method public changeBottomGestureAreaRatio(F)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_29

    :cond_a
    :try_start_a
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->changeBottomGestureAreaRatio(F)V

    sget-object v2, Ly2/p;->a:Ly2/p;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_15

    :catchall_10
    move-exception v2

    invoke-static {v2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_15
    invoke-static {v2}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_27

    :cond_1c
    const-string v3, "failed call changeBottomGestureAreaRatio, e="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemUiProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    iput-object v1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    :goto_29
    if-nez v0, :cond_39

    const-string v0, "OplusSystemUiProxyImpl"

    const-string v1, "changeBottomGestureAreaRatio: mSystemUiProxy is null, run changeBottomGestureAreaRatio when mSystemUiProxy is set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/taskbar/c0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/c0;-><init>(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V

    iput-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    :cond_39
    return-void
.end method

.method public changeMistouchBarVisiablity(ZZ)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_8

    goto :goto_25

    :cond_8
    :try_start_8
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->changeMistouchBarVisiablity(ZZ)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_25

    :cond_1a
    const-string p1, "failed call changeMistouchBarVisiablity, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public final checkIfProxyNull()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->state:I

    const-string v0, "checkIfProxyNull: mSystemUiProxy is NULL. state="

    const-string v1, "QuickStep"

    const-string v2, "OplusSystemUiProxyImpl"

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final executeGestureRegionChangedTransaction()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusSystemUiProxyImpl"

    const-string v2, "executeGestureRegionChangedTransaction()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    goto :goto_11

    :cond_e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->pendingGestureRegionChanged:Ljava/lang/Runnable;

    return-void
.end method

.method public final getState()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->state:I

    return p0
.end method

.method public notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_8

    goto :goto_25

    :cond_8
    :try_start_8
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_25

    :cond_1a
    const-string p1, "failed call notifyInjectAllEvent, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_8

    goto :goto_25

    :cond_8
    :try_start_8
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_25

    :cond_1a
    const-string p1, "failed call notifyInjectEvent, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public notifyKeyEvent(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_8

    goto :goto_25

    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyKeyEvent(I)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_25

    :cond_1a
    const-string p1, "failed call notifyKeyEvent, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public onGetAppIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->checkIfProxyNull()V

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez p0, :cond_8

    goto :goto_25

    :cond_8
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onGetAppIcon(Landroid/graphics/Bitmap;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_25

    :cond_1a
    const-string p1, "failed call onGetAppIcon, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUiProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method public final removeTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTaskListener: mShellTransitions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUiProxyImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-nez p0, :cond_2a

    goto :goto_45

    :cond_2a
    :try_start_2a
    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IShellTransitions;->unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_35
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_45

    :cond_3c
    const-string p1, "removeTaskListener: remove task listener failed, e="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method public final setState(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->state:I

    return-void
.end method
