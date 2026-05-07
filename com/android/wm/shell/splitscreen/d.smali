.class public final synthetic Lcom/android/wm/shell/splitscreen/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field public final synthetic b:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/d;->a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/d;->b:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/d;->c:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/d;->d:Z

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/d;->e:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/d;->f:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/d;->a:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/d;->b:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/d;->c:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/d;->d:Z

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/d;->e:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/d;->f:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->e(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/common/split/SplitLayout;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
