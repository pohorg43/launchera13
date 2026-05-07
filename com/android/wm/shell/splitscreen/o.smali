.class public final synthetic Lcom/android/wm/shell/splitscreen/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/app/PendingIntent;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/o;->a:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/o;->b:Landroid/content/Intent;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/o;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/o;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/o;->e:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/o;->f:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/o;->g:F

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/o;->h:Landroid/view/RemoteAnimationAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/o;->a:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/o;->b:Landroid/content/Intent;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/o;->c:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/o;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/o;->e:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/wm/shell/splitscreen/o;->f:I

    iget v6, p0, Lcom/android/wm/shell/splitscreen/o;->g:F

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/o;->h:Landroid/view/RemoteAnimationAdapter;

    move-object v8, p1

    check-cast v8, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->n(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method
