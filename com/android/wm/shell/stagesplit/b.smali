.class public final synthetic Lcom/android/wm/shell/stagesplit/b;
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

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/view/RemoteAnimationAdapter;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/stagesplit/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/stagesplit/b;->b:I

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/b;->c:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/stagesplit/b;->d:I

    iput-object p4, p0, Lcom/android/wm/shell/stagesplit/b;->e:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/stagesplit/b;->f:I

    iput-object p6, p0, Lcom/android/wm/shell/stagesplit/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/window/RemoteTransition;)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/stagesplit/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/stagesplit/b;->b:I

    iput-object p2, p0, Lcom/android/wm/shell/stagesplit/b;->c:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/wm/shell/stagesplit/b;->d:I

    iput-object p4, p0, Lcom/android/wm/shell/stagesplit/b;->e:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/wm/shell/stagesplit/b;->f:I

    iput-object p6, p0, Lcom/android/wm/shell/stagesplit/b;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/stagesplit/b;->a:I

    packed-switch v1, :pswitch_data_36

    goto :goto_1f

    :pswitch_8  #0x0
    iget v2, v0, Lcom/android/wm/shell/stagesplit/b;->b:I

    iget-object v3, v0, Lcom/android/wm/shell/stagesplit/b;->c:Landroid/os/Bundle;

    iget v4, v0, Lcom/android/wm/shell/stagesplit/b;->d:I

    iget-object v5, v0, Lcom/android/wm/shell/stagesplit/b;->e:Landroid/os/Bundle;

    iget v6, v0, Lcom/android/wm/shell/stagesplit/b;->f:I

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/b;->g:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/RemoteAnimationAdapter;

    move-object/from16 v8, p1

    check-cast v8, Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;->k(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/stagesplit/SplitScreenController;)V

    return-void

    :goto_1f
    iget v9, v0, Lcom/android/wm/shell/stagesplit/b;->b:I

    iget-object v10, v0, Lcom/android/wm/shell/stagesplit/b;->c:Landroid/os/Bundle;

    iget v11, v0, Lcom/android/wm/shell/stagesplit/b;->d:I

    iget-object v12, v0, Lcom/android/wm/shell/stagesplit/b;->e:Landroid/os/Bundle;

    iget v13, v0, Lcom/android/wm/shell/stagesplit/b;->f:I

    iget-object v0, v0, Lcom/android/wm/shell/stagesplit/b;->g:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/window/RemoteTransition;

    move-object/from16 v15, p1

    check-cast v15, Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static/range {v9 .. v15}, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;->e(ILandroid/os/Bundle;ILandroid/os/Bundle;ILandroid/window/RemoteTransition;Lcom/android/wm/shell/stagesplit/SplitScreenController;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
