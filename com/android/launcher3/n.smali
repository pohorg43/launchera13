.class public final synthetic Lcom/android/launcher3/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/n;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_e

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/n;->b:I

    iput p2, p0, Lcom/android/launcher3/n;->c:I

    return-void

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/n;->b:I

    iput p2, p0, Lcom/android/launcher3/n;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/n;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget v0, p0, Lcom/android/launcher3/n;->b:I

    iget p0, p0, Lcom/android/launcher3/n;->c:I

    check-cast p1, Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->j(IILcom/android/wm/shell/apppairs/AppPairsController;)V

    return-void

    :pswitch_10  #0x0
    iget v0, p0, Lcom/android/launcher3/n;->b:I

    iget p0, p0, Lcom/android/launcher3/n;->c:I

    check-cast p1, Lcom/android/launcher3/ButtonDropTarget;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/DropTargetBar;->d(IILcom/android/launcher3/ButtonDropTarget;)V

    return-void

    :goto_1a
    iget v0, p0, Lcom/android/launcher3/n;->b:I

    iget p0, p0, Lcom/android/launcher3/n;->c:I

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->l(IILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
