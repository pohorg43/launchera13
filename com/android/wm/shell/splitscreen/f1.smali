.class public final synthetic Lcom/android/wm/shell/splitscreen/f1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Landroid/view/SurfaceControl;

.field public final synthetic e:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/f1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/f1;->b:Z

    iput p3, p0, Lcom/android/wm/shell/splitscreen/f1;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/f1;->d:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/f1;->e:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/f1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/f1;->b:Z

    iget v2, p0, Lcom/android/wm/shell/splitscreen/f1;->c:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/f1;->d:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/f1;->e:Landroid/view/SurfaceControl;

    move-object v5, p1

    check-cast v5, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->j(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;ZILandroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method
