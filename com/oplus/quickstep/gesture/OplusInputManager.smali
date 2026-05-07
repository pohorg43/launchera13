.class public final Lcom/oplus/quickstep/gesture/OplusInputManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "OplusInputManager"


# instance fields
.field private consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final exService:Landroid/os/IOplusExService;

.field private volatile hasRegistered:Z

.field private final inputReceiver:Landroid/os/IOplusExInputCallBack$Stub;

.field private volatile isValidTouchEvent:Z

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "getMain()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->mainHandler:Landroid/os/Handler;

    const-string v0, "OPLUSExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IOplusExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->exService:Landroid/os/IOplusExService;

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/gesture/OplusInputManager$inputReceiver$1;-><init>(Lcom/oplus/quickstep/gesture/OplusInputManager;)V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->inputReceiver:Landroid/os/IOplusExInputCallBack$Stub;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/OplusInputManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHasRegistered$p(Lcom/oplus/quickstep/gesture/OplusInputManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z

    return p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/oplus/quickstep/gesture/OplusInputManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$isValidTouchEvent$p(Lcom/oplus/quickstep/gesture/OplusInputManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->isValidTouchEvent:Z

    return p0
.end method

.method public static final synthetic access$setValidTouchEvent$p(Lcom/oplus/quickstep/gesture/OplusInputManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->isValidTouchEvent:Z

    return-void
.end method


# virtual methods
.method public final getConsumer()Ljava/util/function/Consumer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->consumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final hasRegistered()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z

    return p0
.end method

.method public final registerInputEvent()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z

    const-string v1, "registerInputEvent: mHasRegistered = "

    const-string v2, "OplusInputManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->exService:Landroid/os/IOplusExService;

    if-nez v0, :cond_13

    goto :goto_18

    :cond_13
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->inputReceiver:Landroid/os/IOplusExInputCallBack$Stub;

    invoke-interface {v0, v1}, Landroid/os/IOplusExService;->registerInputEvent(Landroid/os/IOplusExInputCallBack;)Z

    :goto_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_26

    :catch_1c
    move-exception p0

    const-string v0, "Failing registerInputEvent: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final setConsumer(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->consumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public final unregisterInputEvent()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z

    const-string v1, "unregisterInputEvent: mHasRegistered = "

    const-string v2, "OplusInputManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z

    if-nez v0, :cond_e

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->exService:Landroid/os/IOplusExService;

    if-nez v0, :cond_13

    goto :goto_18

    :cond_13
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->inputReceiver:Landroid/os/IOplusExInputCallBack$Stub;

    invoke-interface {v0, v1}, Landroid/os/IOplusExService;->unregisterInputEvent(Landroid/os/IOplusExInputCallBack;)V

    :goto_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered:Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_26

    :catch_1c
    move-exception p0

    const-string v0, "Failing unregisterInputEvent: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method
