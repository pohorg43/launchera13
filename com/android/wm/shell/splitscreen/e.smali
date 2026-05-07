.class public final synthetic Lcom/android/wm/shell/splitscreen/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;ZLcom/android/wm/shell/common/split/SplitLayout;ZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/e;->a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/e;->b:Z

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/e;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/e;->d:Z

    iput p5, p0, Lcom/android/wm/shell/splitscreen/e;->e:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/e;->a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/e;->b:Z

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/e;->c:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/e;->d:Z

    iget v4, p0, Lcom/android/wm/shell/splitscreen/e;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->g(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;ZLcom/android/wm/shell/common/split/SplitLayout;ZILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
