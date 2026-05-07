.class public final synthetic Lcom/android/common/util/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/util/concurrent/CompletableFuture;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/util/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/util/c;->b:I

    iput p2, p0, Lcom/android/common/util/c;->c:I

    iput-object p3, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/big/BigFolderBackground;Lcom/android/launcher3/CellLayout;II)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/util/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    iput p3, p0, Lcom/android/common/util/c;->b:I

    iput p4, p0, Lcom/android/common/util/c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;IILandroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/common/util/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/android/common/util/c;->b:I

    iput p3, p0, Lcom/android/common/util/c;->c:I

    iput-object p4, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;IILcom/android/wm/shell/common/split/SplitLayout;)V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/util/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/android/common/util/c;->b:I

    iput p3, p0, Lcom/android/common/util/c;->c:I

    iput-object p4, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;II)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/util/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    iput p3, p0, Lcom/android/common/util/c;->b:I

    iput p4, p0, Lcom/android/common/util/c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/util/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/android/common/util/c;->b:I

    iput p3, p0, Lcom/android/common/util/c;->c:I

    iput-object p4, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/common/util/c;->a:I

    packed-switch v0, :pswitch_data_66

    goto :goto_56

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object v1, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    check-cast v1, Landroid/window/WindowContainerTransaction;

    iget v2, p0, Lcom/android/common/util/c;->b:I

    iget p0, p0, Lcom/android/common/util/c;->c:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->l(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Landroid/window/WindowContainerTransaction;II)V

    return-void

    :pswitch_16  #0x3
    iget-object v0, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget v1, p0, Lcom/android/common/util/c;->b:I

    iget v2, p0, Lcom/android/common/util/c;->c:I

    iget-object p0, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->o(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;IILcom/android/wm/shell/common/split/SplitLayout;)V

    return-void

    :pswitch_26  #0x2
    iget-object v0, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/android/common/util/c;->b:I

    iget v2, p0, Lcom/android/common/util/c;->c:I

    iget-object p0, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/touch/ItemClickHandler;->f(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    iget-object v1, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget v2, p0, Lcom/android/common/util/c;->b:I

    iget p0, p0, Lcom/android/common/util/c;->c:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->c(Lcom/android/launcher3/folder/big/BigFolderBackground;Lcom/android/launcher3/CellLayout;II)V

    return-void

    :pswitch_46  #0x0
    iget v0, p0, Lcom/android/common/util/c;->b:I

    iget v1, p0, Lcom/android/common/util/c;->c:I

    iget-object v2, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, v1, v2, p0}, Lcom/android/common/util/BitmapUtils;->a(IILjava/util/concurrent/CompletableFuture;Landroid/view/View;)V

    return-void

    :goto_56
    iget-object v0, p0, Lcom/android/common/util/c;->d:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/android/common/util/c;->b:I

    iget v2, p0, Lcom/android/common/util/c;->c:I

    iget-object p0, p0, Lcom/android/common/util/c;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/splitscreen/StackDividerService;->e(Lcom/android/wm/shell/splitscreen/SplitScreenController;IILandroid/os/Bundle;)V

    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_46  #00000000
        :pswitch_36  #00000001
        :pswitch_26  #00000002
        :pswitch_16  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
