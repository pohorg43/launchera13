.class public final synthetic Lcom/android/wm/shell/splitscreen/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:I

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 9

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/i;->b:I

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/i;->c:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/i;->d:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/i;->e:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/i;->f:I

    iput p6, p0, Lcom/android/wm/shell/splitscreen/i;->g:F

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/i;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .registers 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/i;->b:I

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/i;->c:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/i;->d:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/i;->e:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/splitscreen/i;->f:I

    iput p6, p0, Lcom/android/wm/shell/splitscreen/i;->g:F

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/i;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/i;->a:I

    packed-switch v1, :pswitch_data_3c

    goto :goto_21

    :pswitch_8  #0x0
    iget v2, v0, Lcom/android/wm/shell/splitscreen/i;->b:I

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/i;->c:Landroid/os/Bundle;

    iget v4, v0, Lcom/android/wm/shell/splitscreen/i;->d:I

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/i;->e:Landroid/os/Bundle;

    iget v6, v0, Lcom/android/wm/shell/splitscreen/i;->f:I

    iget v7, v0, Lcom/android/wm/shell/splitscreen/i;->g:F

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/i;->h:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/window/RemoteTransition;

    move-object/from16 v9, p1

    check-cast v9, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->m(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :goto_21
    iget v10, v0, Lcom/android/wm/shell/splitscreen/i;->b:I

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/i;->c:Landroid/os/Bundle;

    iget v12, v0, Lcom/android/wm/shell/splitscreen/i;->d:I

    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/i;->e:Landroid/os/Bundle;

    iget v14, v0, Lcom/android/wm/shell/splitscreen/i;->f:I

    iget v15, v0, Lcom/android/wm/shell/splitscreen/i;->g:F

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/i;->h:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/RemoteAnimationAdapter;

    move-object/from16 v17, p1

    check-cast v17, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static/range {v10 .. v17}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->f(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
