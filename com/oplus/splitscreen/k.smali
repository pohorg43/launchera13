.class public final synthetic Lcom/oplus/splitscreen/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic c:Landroid/hardware/HardwareBuffer;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Landroid/app/PendingIntent;

.field public final synthetic h:Landroid/content/Intent;

.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/k;->a:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p2, p0, Lcom/oplus/splitscreen/k;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p3, p0, Lcom/oplus/splitscreen/k;->c:Landroid/hardware/HardwareBuffer;

    iput p4, p0, Lcom/oplus/splitscreen/k;->d:I

    iput-boolean p5, p0, Lcom/oplus/splitscreen/k;->e:Z

    iput p6, p0, Lcom/oplus/splitscreen/k;->f:I

    iput-object p7, p0, Lcom/oplus/splitscreen/k;->g:Landroid/app/PendingIntent;

    iput-object p8, p0, Lcom/oplus/splitscreen/k;->h:Landroid/content/Intent;

    iput-object p9, p0, Lcom/oplus/splitscreen/k;->i:Landroid/os/Bundle;

    iput p10, p0, Lcom/oplus/splitscreen/k;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/oplus/splitscreen/k;->a:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, p0, Lcom/oplus/splitscreen/k;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/oplus/splitscreen/k;->c:Landroid/hardware/HardwareBuffer;

    iget v3, p0, Lcom/oplus/splitscreen/k;->d:I

    iget-boolean v4, p0, Lcom/oplus/splitscreen/k;->e:Z

    iget v5, p0, Lcom/oplus/splitscreen/k;->f:I

    iget-object v6, p0, Lcom/oplus/splitscreen/k;->g:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/oplus/splitscreen/k;->h:Landroid/content/Intent;

    iget-object v8, p0, Lcom/oplus/splitscreen/k;->i:Landroid/os/Bundle;

    iget v9, p0, Lcom/oplus/splitscreen/k;->j:I

    invoke-static/range {v0 .. v9}, Lcom/oplus/splitscreen/StackDividerService;->b(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method
