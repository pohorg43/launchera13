.class public final synthetic Lcom/android/wm/shell/splitscreen/g1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:I

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/g1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/g1;->b:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/g1;->c:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/g1;->d:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/g1;->e:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/g1;->f:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/g1;->g:F

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/g1;->h:Landroid/view/RemoteAnimationAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/g1;->a:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;

    iget v1, p0, Lcom/android/wm/shell/splitscreen/g1;->b:I

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/g1;->c:Landroid/os/Bundle;

    iget v3, p0, Lcom/android/wm/shell/splitscreen/g1;->d:I

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/g1;->e:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/wm/shell/splitscreen/g1;->f:I

    iget v6, p0, Lcom/android/wm/shell/splitscreen/g1;->g:F

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/g1;->h:Landroid/view/RemoteAnimationAdapter;

    invoke-static/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;->a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$11;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    return-void
.end method
