.class public final Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

.field private static final TAG:Ljava/lang/String; = "GlobalInputReceiverClie"

.field private static isOneHandedModeActivated:Z

.field private static launcher:Lcom/android/launcher3/Launcher;

.field private static final mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient$mContentObserver$1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient$mContentObserver$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/MotionEvent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->addGlobalTouchListener$lambda-1$lambda-0(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static final synthetic access$setOneHandedModeActivated$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated:Z

    return-void
.end method

.method private static final addGlobalTouchListener$lambda-1$lambda-0(Landroid/view/MotionEvent;)V
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->INSTANCE:Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    invoke-interface {v0, p0}, Lcom/android/quickstep/InputConsumer;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method


# virtual methods
.method public final addGlobalTouchListener(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->launcher:Lcom/android/launcher3/Launcher;

    sget-object p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->INSTANCE:Lcom/android/launcher3/dragndrop/OplusInputDragManager$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;

    const-string p1, "GlobalInputReceiverClie"

    const-string v0, "addGlobalTouchListener"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->registerInputEvent()V

    sget-object p1, Lcom/android/launcher/m;->d:Lcom/android/launcher/m;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->setConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getLauncher()Lcom/android/launcher3/Launcher;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->launcher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/high16 p0, 0x1000000

    return p0
.end method

.method public final initOneHandedMode(Landroid/content/Context;)V
    .registers 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string/jumbo v1, "one_handed_mode_activated"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v0

    :goto_1a
    sput-boolean v2, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final isOneHandedModeActivated()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->isOneHandedModeActivated:Z

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->launcher:Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_5

    goto :goto_f

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_f

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    :goto_f
    return-void
.end method

.method public final removeGlobalTouchListener()V
    .registers 3

    sget-object p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->INSTANCE:Lcom/android/launcher3/dragndrop/OplusInputDragManager$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;

    const-string v0, "GlobalInputReceiverClie"

    const-string/jumbo v1, "removeGlobalTouchListener"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->unregisterInputEvent()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->setConsumer(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setLauncher(Lcom/android/launcher3/Launcher;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->launcher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public final unregisterObserver(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
