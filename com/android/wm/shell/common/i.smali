.class public final synthetic Lcom/android/wm/shell/common/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/common/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/common/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/common/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;Ljava/lang/String;Landroid/view/InsetsVisibilities;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/common/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/common/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/common/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/common/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/common/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/common/i;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/common/i;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/common/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/common/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/wm/shell/common/i;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/InsetsVisibilities;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;->b(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;Ljava/lang/String;Landroid/view/InsetsVisibilities;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/common/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iget-object v1, p0, Lcom/android/wm/shell/common/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/wm/shell/common/i;->d:Ljava/lang/Object;

    check-cast p0, [Landroid/view/InsetsSourceControl;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;->e(Lcom/android/wm/shell/common/DisplayInsetsController$PerDisplay$DisplayWindowInsetsControllerImpl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/wm/shell/common/i;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/common/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Supplier;

    iget-object p0, p0, Lcom/android/wm/shell/common/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/common/ShellExecutor;->j([Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
