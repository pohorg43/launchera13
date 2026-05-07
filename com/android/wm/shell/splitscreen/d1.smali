.class public final synthetic Lcom/android/wm/shell/splitscreen/d1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic e:Landroid/view/SurfaceControl;

.field public final synthetic f:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/d1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/d1;->b:Landroid/view/SurfaceControl;

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/d1;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/d1;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/d1;->e:Landroid/view/SurfaceControl;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/d1;->f:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/d1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/d1;->b:Landroid/view/SurfaceControl;

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/d1;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/d1;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/d1;->e:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/d1;->f:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->d(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/view/SurfaceControl;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
