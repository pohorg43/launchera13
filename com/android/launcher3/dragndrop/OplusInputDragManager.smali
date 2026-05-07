.class public final Lcom/android/launcher3/dragndrop/OplusInputDragManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/OplusInputDragManager$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/dragndrop/OplusInputDragManager$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "OplusInputDragManager"


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

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/OplusInputDragManager$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/OplusInputDragManager$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->INSTANCE:Lcom/android/launcher3/dragndrop/OplusInputDragManager$INSTANCE;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "getMain()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->mainHandler:Landroid/os/Handler;

    const-string v0, "OPLUSExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IOplusExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->exService:Landroid/os/IOplusExService;

    new-instance v0, Lcom/android/launcher3/dragndrop/OplusInputDragManager$inputReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager$inputReceiver$1;-><init>(Lcom/android/launcher3/dragndrop/OplusInputDragManager;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->inputReceiver:Landroid/os/IOplusExInputCallBack$Stub;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/OplusInputDragManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHasRegistered$p(Lcom/android/launcher3/dragndrop/OplusInputDragManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z

    return p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/android/launcher3/dragndrop/OplusInputDragManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->mainHandler:Landroid/os/Handler;

    return-object p0
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

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->consumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final hasRegistered()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z

    return p0
.end method

.method public final registerInputEvent()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z

    const-string/jumbo v1, "registerInputEvent: mHasRegistered = "

    const-string v2, "OplusInputDragManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->exService:Landroid/os/IOplusExService;

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->inputReceiver:Landroid/os/IOplusExInputCallBack$Stub;

    invoke-interface {v0, v1}, Landroid/os/IOplusExService;->registerInputEvent(Landroid/os/IOplusExInputCallBack;)Z

    :goto_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1d

    goto :goto_27

    :catch_1d
    move-exception p0

    const-string v0, "Failing registerInputEvent: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
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

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->consumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public final unregisterInputEvent()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z

    const-string/jumbo v1, "unregisterInputEvent: mHasRegistered = "

    const-string v2, "OplusInputDragManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z

    if-nez v0, :cond_f

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->exService:Landroid/os/IOplusExService;

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->inputReceiver:Landroid/os/IOplusExInputCallBack$Stub;

    invoke-interface {v0, v1}, Landroid/os/IOplusExService;->unregisterInputEvent(Landroid/os/IOplusExInputCallBack;)V

    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/OplusInputDragManager;->hasRegistered:Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1d

    goto :goto_27

    :catch_1d
    move-exception p0

    const-string v0, "Failing unregisterInputEvent: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-void
.end method
