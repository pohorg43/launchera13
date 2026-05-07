.class public final synthetic Lcom/android/launcher/touch/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

.field public final synthetic c:Lcom/android/launcher/Launcher;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;I)V
    .registers 5

    iput p4, p0, Lcom/android/launcher/touch/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/e;->b:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    iput-object p2, p0, Lcom/android/launcher/touch/e;->c:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher/touch/e;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/touch/e;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/touch/e;->b:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    iget-object v1, p0, Lcom/android/launcher/touch/e;->c:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/touch/e;->d:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->g(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher/touch/e;->b:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    iget-object v1, p0, Lcom/android/launcher/touch/e;->c:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/touch/e;->d:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->b(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
