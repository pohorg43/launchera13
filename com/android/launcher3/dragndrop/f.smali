.class public final synthetic Lcom/android/launcher3/dragndrop/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/AnimatorSet;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/BaseItemDragListener;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/LauncherDragController;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/dragndrop/f;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2e

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->d(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    return-void

    :pswitch_e  #0x3
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->f(Landroid/animation/AnimatorSet;)V

    return-void

    :pswitch_16  #0x2
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->a(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)V

    return-void

    :pswitch_1e  #0x1
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->removeListener()V

    return-void

    :pswitch_26  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->a(Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;)V

    return-void

    :goto_2e
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/LauncherDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_1e  #00000001
        :pswitch_16  #00000002
        :pswitch_e  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
