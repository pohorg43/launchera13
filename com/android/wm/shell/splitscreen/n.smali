.class public final synthetic Lcom/android/wm/shell/splitscreen/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/app/PendingIntent;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/n;->a:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/n;->b:Landroid/content/Intent;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/n;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/n;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/n;->a:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/n;->b:Landroid/content/Intent;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/n;->c:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/n;->d:Landroid/os/Bundle;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->e(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method
