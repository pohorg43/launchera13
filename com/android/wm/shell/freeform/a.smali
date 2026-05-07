.class public final synthetic Lcom/android/wm/shell/freeform/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V
    .registers 5

    iput p4, p0, Lcom/android/wm/shell/freeform/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/a;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/a;->c:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/a;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/freeform/a;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/a;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/a;->c:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/a;->d:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->b(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/wm/shell/freeform/a;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/a;->c:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/a;->d:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
