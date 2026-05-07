.class public final synthetic Lcom/android/wm/shell/splitscreen/e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic c:I

.field public final synthetic d:Landroid/app/PendingIntent;

.field public final synthetic e:Landroid/content/Intent;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/e1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/e1;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/e1;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/e1;->d:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/e1;->e:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/e1;->f:Landroid/os/Bundle;

    iput p7, p0, Lcom/android/wm/shell/splitscreen/e1;->g:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/e1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/e1;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/e1;->c:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/e1;->d:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/e1;->e:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/e1;->f:Landroid/os/Bundle;

    iget v6, p0, Lcom/android/wm/shell/splitscreen/e1;->g:I

    move-object v7, p1

    check-cast v7, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->c(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;ILandroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method
