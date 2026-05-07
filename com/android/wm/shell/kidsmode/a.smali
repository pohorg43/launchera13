.class public final synthetic Lcom/android/wm/shell/kidsmode/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/kidsmode/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/a;->b:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/kidsmode/a;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/kidsmode/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/a;->b:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/a;->c:Landroid/graphics/Rect;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->d(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/a;->b:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/a;->c:Landroid/graphics/Rect;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->g(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
