.class public final Lcom/android/common/util/LauncherUtilsThread;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/LauncherUtilsThread;

.field private static final LauncherCommonBg:Ljava/lang/String; = "LauncherUtilsThread"

.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/LauncherUtilsThread;

    invoke-direct {v0}, Lcom/android/common/util/LauncherUtilsThread;-><init>()V

    sput-object v0, Lcom/android/common/util/LauncherUtilsThread;->INSTANCE:Lcom/android/common/util/LauncherUtilsThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LauncherUtilsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/util/LauncherUtilsThread;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/common/util/LauncherUtilsThread;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/common/util/LauncherUtilsThread;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherUtilsThread;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getThreadLooper()Landroid/os/Looper;
    .registers 2

    sget-object p0, Lcom/android/common/util/LauncherUtilsThread;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    const-string v0, "handlerThread.looper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
