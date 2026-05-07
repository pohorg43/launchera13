.class public final synthetic Lcom/android/wm/shell/stagesplit/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/stagesplit/e;->a:I

    iput p2, p0, Lcom/android/wm/shell/stagesplit/e;->b:I

    iput-object p3, p0, Lcom/android/wm/shell/stagesplit/e;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/stagesplit/e;->a:I

    iget v1, p0, Lcom/android/wm/shell/stagesplit/e;->b:I

    iget-object p0, p0, Lcom/android/wm/shell/stagesplit/e;->c:Landroid/os/Bundle;

    check-cast p1, Lcom/android/wm/shell/stagesplit/SplitScreenController;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/stagesplit/SplitScreenController$ISplitScreenImpl;->j(IILandroid/os/Bundle;Lcom/android/wm/shell/stagesplit/SplitScreenController;)V

    return-void
.end method
