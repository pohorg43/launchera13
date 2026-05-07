.class public final synthetic Lcom/android/launcher3/touch/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/touch/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/touch/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/touch/BaseSwipeDetector;Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/touch/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/touch/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/touch/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/touch/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object p0, p0, Lcom/android/launcher3/touch/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->a(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/launcher3/touch/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;

    iget-object p0, p0, Lcom/android/launcher3/touch/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->b(Lcom/android/launcher3/touch/AbstractStateChangeTouchController;Lcom/android/launcher3/LauncherState;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher3/touch/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/touch/BaseSwipeDetector;

    iget-object p0, p0, Lcom/android/launcher3/touch/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    invoke-static {v0, p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->a(Lcom/android/launcher3/touch/BaseSwipeDetector;Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
