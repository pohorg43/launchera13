.class public final synthetic Lcom/android/wm/shell/legacysplitscreen/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Landroid/view/SurfaceControl;

.field public final synthetic b:Landroid/graphics/Point;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/m;->a:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/m;->b:Landroid/graphics/Point;

    iput-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/m;->c:Z

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/m;->a:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/m;->b:Landroid/graphics/Point;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/m;->c:Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->a(Landroid/view/SurfaceControl;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
