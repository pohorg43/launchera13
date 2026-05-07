.class public final synthetic Lcom/android/wm/shell/splitscreen/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/view/SurfaceControl;

.field public final synthetic e:Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;I)V
    .registers 6

    iput p5, p0, Lcom/android/wm/shell/splitscreen/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/c0;->b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/c0;->c:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/c0;->d:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/c0;->e:Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/c0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/c0;->b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/c0;->c:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/c0;->d:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/c0;->e:Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->d(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/c0;->b:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/c0;->c:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/c0;->d:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/c0;->e:Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->e(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/SplitAnimationSurfacePanel;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
