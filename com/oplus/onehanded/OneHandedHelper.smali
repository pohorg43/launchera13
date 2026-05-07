.class public Lcom/oplus/onehanded/OneHandedHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "com.oplus.onehanded.OneHandedHelper"

.field private static mInstance:Lcom/oplus/onehanded/OneHandedHelper;


# instance fields
.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mMainHandler:Landroid/os/Handler;

.field private mOneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

.field private mOneHandedController:Lcom/android/wm/shell/onehanded/OneHandedController;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/onehanded/OneHandedHelper;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oplus/onehanded/OneHandedHelper;->mOneHandedController:Lcom/android/wm/shell/onehanded/OneHandedController;

    iput-object v0, p0, Lcom/oplus/onehanded/OneHandedHelper;->mOneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oplus/onehanded/OneHandedHelper;
    .registers 2

    const-class v0, Lcom/oplus/onehanded/OneHandedHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/onehanded/OneHandedHelper;->mInstance:Lcom/oplus/onehanded/OneHandedHelper;

    if-nez v1, :cond_e

    new-instance v1, Lcom/oplus/onehanded/OneHandedHelper;

    invoke-direct {v1}, Lcom/oplus/onehanded/OneHandedHelper;-><init>()V

    sput-object v1, Lcom/oplus/onehanded/OneHandedHelper;->mInstance:Lcom/oplus/onehanded/OneHandedHelper;

    :cond_e
    sget-object v1, Lcom/oplus/onehanded/OneHandedHelper;->mInstance:Lcom/oplus/onehanded/OneHandedHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public controlOneHandedMode(ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedHelper;->mOneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/OneHanded;->isOneHandedEnabled()Z

    move-result v0

    sget-object v1, Lcom/oplus/onehanded/OneHandedHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlOneHandedMode cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/onehanded/utils/OneHandedLogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_49

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "controlOneHandedMode  no enable,cmd="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    const/4 p2, 0x1

    if-ne p1, p2, :cond_57

    const-string p1, "controlOneHandedMode startOneHanded"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/onehanded/OneHandedHelper;->mOneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->startOneHanded()V

    goto :goto_64

    :cond_57
    const/4 p2, 0x2

    if-ne p1, p2, :cond_64

    const-string p1, "controlOneHandedMode stopOneHanded"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/onehanded/OneHandedHelper;->mOneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded()V

    :cond_64
    :goto_64
    return-void
.end method

.method public getOneHandedOffsetY()I
    .registers 2

    iget-object p0, p0, Lcom/oplus/onehanded/OneHandedHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getTutorialAreaHeight(Landroid/graphics/Rect;)I
    .registers 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f000000  # 0.5f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public init(Lcom/android/wm/shell/onehanded/OneHandedController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/WindowManager;)V
    .registers 5

    iput-object p4, p0, Lcom/oplus/onehanded/OneHandedHelper;->mWindowManager:Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oplus/onehanded/OneHandedHelper;->mOneHandedController:Lcom/android/wm/shell/onehanded/OneHandedController;

    iput-object p2, p0, Lcom/oplus/onehanded/OneHandedHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/oplus/onehanded/OneHandedHelper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->asOneHanded()Lcom/android/wm/shell/onehanded/OneHanded;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/onehanded/OneHandedHelper;->mOneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    return-void
.end method

.method public isWallpaperSurface(Landroid/view/SurfaceControl;)Z
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneHanded:0:1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
