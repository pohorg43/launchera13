.class public final synthetic Lcom/android/wm/shell/tasksurfacehelper/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/tasksurfacehelper/c;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/tasksurfacehelper/c;->b:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/tasksurfacehelper/c;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/tasksurfacehelper/c;->b:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-static {v0, p0}, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;->c(Ljava/util/function/Consumer;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method
