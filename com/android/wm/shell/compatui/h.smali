.class public final synthetic Lcom/android/wm/shell/compatui/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;Landroid/view/SurfaceControl;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/h;->a:Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/h;->b:Landroid/view/SurfaceControl;

    iput p3, p0, Lcom/android/wm/shell/compatui/h;->c:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/h;->a:Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/h;->b:Landroid/view/SurfaceControl;

    iget p0, p0, Lcom/android/wm/shell/compatui/h;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->b(Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;Landroid/view/SurfaceControl;ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
